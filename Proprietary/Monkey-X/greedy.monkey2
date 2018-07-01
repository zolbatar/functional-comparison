#Import "<std>"
#Import "<monkey>"

Using std..
Using monkey..

Class TActivity
	Field id:String, lat:Float, lon:Float
End

Class TAllocation
	Field rid:String, aid:String, dist:Float
End

Class TResource
	Field id:String, lat:Float, lon:Float
End

Class Program
	Const earthRadius:Float = 6367450.0
	Field la:List<TActivity> = New List<TActivity>
	Field lr:List<TResource> = New List<TResource>

	Function DistanceBetweenPointsLatLong:Float(lat1:Float, lon1:Float, lat2:Float, lon2:Float)
		Local dLongitude:Float = lon2 - lon1
		Local dLatitude:Float = lat2 - lat1
		Local dSinHalfLatitude:Float = Sin(dLatitude * 0.5)
		Local dSinHalfLongitude:Float = Sin(dLongitude * 0.5)
		Local a:Float = dSinHalfLatitude * dSinHalfLatitude + Cos(lat1) * Cos(lat2) * dSinHalfLongitude * dSinHalfLongitude
		Local c:Float = ATan2(Sqrt(a), Sqrt(1.0 - a)) / 180 * Pi
		Return (earthRadius * (c + c))
	End
	
	Method LoadCSV:Void()
		Local in:FileStream = FileStream.Open("C:\Users\Daryl\Documents\SourceCode\FunctionalComparison\Data\DataSPIF.csv", "r")
		Print in.Length
		While Not in.Eof
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
				Local lowest:Float = 1e38
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

Function Main:Void()
	Local p:Program = New Program
	p.Main()
End