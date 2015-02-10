Strict
Import monkey
Import brl

Class TActivity
	Field id:String, lat:Float, lon:Float
End

Class TAllocation
	Field rid:String, aid:String, dist:Float
End

Class TResource
	Field id:String, lat:Float, lon:Float
End

Function Main:Int()
	Local p:Program = New Program
	p.Main()
	Return 0
End

class Program
	Const earthRadius:Float = 6367450.0
	Const convert2Rad:Float = PI / 180.0
	Field la:List<TActivity> = New List<TActivity>
	Field lr:List<TResource> = New List<TResource>

	Function DistanceBetweenPointsLatLong:Float(lat1:Float, lon1:Float, lat2:Float, lon2:Float)
		Local dStartLatInRad:Float = lat1 * convert2Rad
		Local dStartLongInRad:Float = lon1 * convert2Rad
		Local dEndLatInRad:Float = lat2 * convert2Rad
		Local dEndLongInRad:Float = lon2 * convert2Rad
		Local dLongitude:Float = dEndLongInRad - dStartLongInRad
		Local dLatitude:Float = dEndLatInRad - dStartLatInRad
		Local dSinHalfLatitude:Float = Sin(dLatitude * 0.5)
		Local dSinHalfLongitude:Float = Sin(dLongitude * 0.5)
		Local a:Float = dSinHalfLatitude * dSinHalfLatitude + Cos(dStartLatInRad) * Cos(dEndLatInRad) * dSinHalfLongitude * dSinHalfLongitude
		Local c:Float = ATan2(Sqrt(a), Sqrt(1.0 - a))
		Return (earthRadius * (c + c))
	End
	
	Method LoadCSV:Void()
'		Local in:TStream = ReadFile("C:\Data\Development\FunctionalComparison\Data\DataSPIF.csv")
		Local in:FileStream = FileStream.Open("/Users/daryl/Development/Projects/FunctionalComparison/Data/DataSPIF.csv", "r")
		While Not in.Eof()
        	Local l:String = in.ReadLine()
			Local s:String[] = l.Split(",")
			Select s.Length
				Case 4
					Local a:TActivity = New TActivity
					a.id = s[0]
					a.lat = Float(s[1])
					a.lon = Float(s[2])
					la.AddLast(a)
				Case 3
					Local r:TResource = New TResource 
					r.id = s[0]
					r.lat = Float(s[1])
					r.lon = Float(s[2])
					lr.AddLast(r)
			End Select
		Wend		
		in.Close()
	End
	
	Method ScheduleResources:Float()
		Local lla:List<TActivity> = New List<TActivity>(la.ToArray())
		Local lal:List<TAllocation> = New List<TAllocation>
		For Local r:TResource = Eachin lr
			For Local i:Int = 0 Until 50
				Local lowest:Float = 10e308
				Local lowest_item:TActivity = Null
				For Local a:TActivity = EachIn lla
					Local dist:Float = DistanceBetweenPointsLatLong(r.lat, r.lon, a.lat, a.lon)
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
				lla.RemoveEach(lowest_item)
			Next
		Next
		Local res:Float
		For Local a:TAllocation = EachIn lal
			res = res + a.dist 
		Next
		Return res
	End
	
	Method Main:Void()
		LoadCSV()
		For Local i:Int = 0 Until 100
			Local r:Float = ScheduleResources()
			Print i + ": " + r
		Next
	End

End