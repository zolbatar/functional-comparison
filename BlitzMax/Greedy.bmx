SuperStrict

Import "Activity.bmx"
Import "Resource.bmx"
Import "Allocation.bmx"

Local p:Program = New Program
p.Main()

Type Program
	Const earthRadius:Double = 6367450.0
	Const convert2Rad:Double = Pi / 180.0
	Field la:TList = New TList
	Field lr:TList = New TList

	Function DistanceBetweenPointsLatLong:Double(lat1:Double, lon1:Double, lat2:Double, lon2:Double)
		Local dStartLatInRad:Double = lat1 * convert2Rad
		Local dStartLongInRad:Double = lon1 * convert2Rad
		Local dEndLatInRad:Double = lat2 * convert2Rad
		Local dEndLongInRad:Double = lon2 * convert2Rad
		Local dLongitude:Double = dEndLongInRad - dStartLongInRad
		Local dLatitude:Double = dEndLatInRad - dStartLatInRad
		Local dSinHalfLatitude:Double = Sin(dLatitude * 0.5)
		Local dSinHalfLongitude:Double = Sin(dLongitude * 0.5)
		Local a:Double = dSinHalfLatitude * dSinHalfLatitude + Cos(dStartLatInRad) * Cos(dEndLatInRad) * dSinHalfLongitude * dSinHalfLongitude
		Local c:Double = ATan2(Sqr(a), Sqr(1.0 - a))
		Return (earthRadius * (c + c))
	End Function
	
	Method LoadCSV() 
		Local in:TStream = ReadFile("C:\Data\Development\FunctionalComparison\Data\DataSPIF.csv")
		While Not Eof(in)
        	Local l:String = ReadLine(in)
			Local s:String[] = l.Split(",")
			Select s.length
				Case 4
					Local a:TActivity = New TActivity
					a.id = s[0]
					a.lat = s[1].ToDouble()
					a.lon = s[2].ToDouble()
					la.AddLast(a)
				Case 3
					Local r:TResource = New TResource 
					r.id = s[0]
					r.lat = s[1].ToDouble()
					r.lon = s[2].ToDouble()
					lr.AddLast(r)
			End Select
		Wend		
		CloseStream(in)
	End Method
	
	Method ScheduleResources:Double()
		Local lla:TList = la.Copy()
		Local lal:TList = New TList
		For Local r:TResource = EachIn lr
			For Local i:Int = 0 Until 50
				Local lowest:Double = 10^308
				Local lowest_item:TActivity = Null
				For Local a:TActivity = EachIn lla
					Local dist:Double = DistanceBetweenPointsLatLong(r.lat, r.lon, a.lat, a.lon)
					If dist < lowest
						lowest = dist
						lowest_item = a
					End If
				Next
				Local al:TAllocation = New TAllocation
				al.aid = lowest_item.id
				al.rid = r.id
				al.dist = lowest
				lal.AddLast(al)
				ListRemove(lla, lowest_item)
			Next
		Next
		Local res:Double
		For Local a:TAllocation = EachIn lal
			res = res + a.dist 
		Next
		Return res
	End Method
	
	Method Main()
		LoadCSV()
		For Local i:Int = 0 Until 100
			Local r:Double = ScheduleResources()
			Print i + ": " + r
		Next
	End Method

End Type