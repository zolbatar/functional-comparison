import math 

cdef double earthRadiusM = 6367450
cdef double convert2Rad = math.pi / 180.0
cdef double convert2Deg = 180.0 / math.pi
cdef double seconds_per_metre = 0.0559234073

cdef double distanceBetweenPointsLatLong(double lat1, double lon1, double lat2, double lon2):
	dStartLatInRad = lat1 * convert2Rad
	dStartLongInRad = lon1 * convert2Rad
	dEndLatInRad = lat2 * convert2Rad
	dEndLongInRad = lon2 * convert2Rad
	dLongitude = dEndLongInRad - dStartLongInRad
	dLatitude = dEndLatInRad - dStartLatInRad
	dSinHalfLatitude = math.sin(dLatitude * 0.5)
	dSinHalfLongitude = math.sin(dLongitude * 0.5)
	a = dSinHalfLatitude * dSinHalfLatitude + math.cos(dStartLatInRad) * math.cos(dEndLatInRad) * dSinHalfLongitude * dSinHalfLongitude
	c = math.atan2(math.sqrt(a), math.sqrt(1.0 - a))
	return earthRadiusM * (c + c)

