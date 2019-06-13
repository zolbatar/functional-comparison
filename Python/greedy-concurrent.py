import copy
import math
import string
import sys
import timeit
import os
from multiprocessing import Pool, Process


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
    def __init__(self, rid, aid, dist):
        self.rid = rid
        self.aid = aid
        self.dist = dist


class SchemaData(object):
    activity = []
    resource = []


earthRadiusM = 6367450.0
convert2Rad = math.pi / 180.0
convert2Deg = 180.0 / math.pi
seconds_per_metre = 0.0559234073


def scheduleResources(sd, i):
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
    tot = sum(i.dist for i in allocation)
    print(str(i + 1) + ": " + str(tot))


def distanceBetweenPointsLatLong(lat1, lon1, lat2, lon2):
    dStartLatInRad = lat1 * convert2Rad
    dStartLongInRad = lon1 * convert2Rad
    dEndLatInRad = lat2 * convert2Rad
    dEndLongInRad = lon2 * convert2Rad
    dLongitude = dEndLongInRad - dStartLongInRad
    dLatitude = dEndLatInRad - dStartLatInRad
    dSinHalfLatitude = math.sin(dLatitude * 0.5)
    dSinHalfLongitude = math.sin(dLongitude * 0.5)
    a = dSinHalfLatitude * dSinHalfLatitude + \
        math.cos(dStartLatInRad) * math.cos(dEndLatInRad) * \
        dSinHalfLongitude * dSinHalfLongitude
    c = math.atan2(math.sqrt(a), math.sqrt(1.0 - a))
    return earthRadiusM * (c + c)


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

    with Pool(processes=8) as pool:
        for i in range(0, 1000):
            sdi = SchemaData()
            sdi.resource = list(r)
            sdi.activity = list(a)
            pool.apply_async(scheduleResources, [sdi, i])
        pool.close()
        pool.join()


if __name__ == '__main__':
    run()
