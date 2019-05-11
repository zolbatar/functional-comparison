# cython: language_level=3

import math
import sys
from libc.math cimport sin, cos, sqrt, atan2

cdef double earthRadiusM = 6367450.0
cdef double convert2Rad = math.pi / 180.0
cdef double convert2Deg = 180.0 / math.pi


class Activity(object):
    def __init__(self, id, lat, lon):
        self.id = id
        self.lat = lat
        self.lon = lon


class Resource(object):
    def __init__(self, id, lat, lon):
        self.id = id
        self.lat = lat
        self.lon = lon


class Allocation(object):
    def __init__(self, rid, aid, double dist):
        self.rid = rid
        self.aid = aid
        self.dist = dist


class SchemaData(object):
    activity = []
    resource = []


cdef double distanceBetweenPointsLatLong(double lat1, double lon1, double lat2, double lon2):
    cdef double dStartLatInRad = lat1 * convert2Rad
    cdef double dStartLongInRad = lon1 * convert2Rad
    cdef double dEndLatInRad = lat2 * convert2Rad
    cdef double dEndLongInRad = lon2 * convert2Rad
    cdef double dLongitude = dEndLongInRad - dStartLongInRad
    cdef double dLatitude = dEndLatInRad - dStartLatInRad
    cdef double dSinHalfLatitude = sin(dLatitude * 0.5)
    cdef double dSinHalfLongitude = sin(dLongitude * 0.5)
    cdef double a = dSinHalfLatitude * dSinHalfLatitude + \
        cos(dStartLatInRad) * cos(dEndLatInRad) * \
        dSinHalfLongitude * dSinHalfLongitude
    cdef double c = atan2(sqrt(a), sqrt(1.0 - a))
    return earthRadiusM * (c + c)


def scheduleResources(sd):
    cdef double lowest
    cdef double dist
    cdef int c
    allocation = []
    for res in sd.resource:
        for c in range(0, 50):
            lowest = sys.float_info.max
            lowestact = None
            for act in sd.activity:
                dist = distanceBetweenPointsLatLong(
                    res.lat, res.lon, act.lat, act.lon)
                if dist < lowest:
                    lowest = dist
                    lowestact = act
            allocation.append(Allocation(res.id, lowestact.id, lowest))
            sd.activity.remove(lowestact)
    return sum(i.dist for i in allocation)


def run():
    a = []
    r = []
    f = open('../Data/DataSPIF.csv', 'r')
    for line in f:
        items = line.split(',')
        if len(items) == 3:
            r.append(Resource(items[0], float(items[1]), float(items[2])))
        else:
            a.append(Resource(items[0], float(items[1]), float(items[2])))

    sdi = SchemaData()
    sdi.resource = list(r)
    sdi.activity = list(a)
    for i in range(0, 100):
        tot = scheduleResources(sdi)
        print(str(i + 1) + ": " + str(tot))
        sdi.activity = list(a)
