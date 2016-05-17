SuperStrict

Local p:Program = New Program
p.Main()

Type TActivity
	Field id:String, lat:Double, lon:Double
End Type

Type TAllocation
	Field rid:String, aid:String, dist:Double
End Type

Type TResource
	Field id:String, lat:Double, lon:Double
End Type

Type Program
	Const earthRadius:Double = 6367450.0
	Field la:TList = New TList
	Field lr:TList = New TList

	Function DistanceBetweenPointsLatLong:Double(lat1:Double, lon1:Double, lat2:Double, lon2:Double)
		Local dLongitude:Double = lon2 - lon1
		Local dLatitude:Double = lat2 - lat1
		Local dSinHalfLatitude:Double = Sin(dLatitude * 0.5)
		Local dSinHalfLongitude:Double = Sin(dLongitude * 0.5)
		Local a:Double = dSinHalfLatitude * dSinHalfLatitude + Cos(lat1) * Cos(lat2) * dSinHalfLongitude * dSinHalfLongitude
		Local c:Double = ATan2(Sqr(a), Sqr(1.0 - a)) / 180 * Pi
		Return (earthRadius * (c + c))
	End Function
	
	Method LoadCSV() 
		Local in:TStream = ReadFile("../../Data/DataSPIF.csv")
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
		For Local i:Int = 0 Until 1000
			Local r:Double = ScheduleResources()
			Print i + ": " + r
		Next
	End Method

End Type