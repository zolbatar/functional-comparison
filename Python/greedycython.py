import copy
import math 
import string
import sys
import greedycythoncalc

class Activity:
	id = ""
	lat = 0.0
	lon = 0.0

	def __init__(self, id, lat, lon):
		self.id = id
		self.lat = lat
		self.lon = lon

class Resource:
	id = ""
	lat = 0.0
	lon = 0.0

	def __init__(self, id, lat, lon):
		self.id = id
		self.lat = lat
		self.lon = lon

class Allocation:
	rid = ""
	aid = ""
	dist = 0.0

	def __init__(self, rid, aid, dist):
		self.rid = rid
		self.aid = aid
		self.dist = dist

class SchemaData:
	activity = [] 
	resource = [] 
	allocation = [] 

def scheduleResources(sd):
	for res in sd.resource:
		for c in range(0, 50):
			lowest = sys.float_info.max
			for act in sd.activity:
				dist = greedycythoncalc.distanceBetweenPointsLatLong(res.lat, res.lon, act.lat, act.lon)					
				if dist < lowest:
					lowest = dist
					lowestact = act 
			sd.allocation.append(Allocation(res.id, lowestact.id, lowest))
			sd.activity.remove(lowestact)

a = []
r = []
#f = open('D:/Development/FunctionalComparison/Data/DataSPIF.csv', 'r')
f = open('/Users/daryl/Development/Projects/FunctionalComparison/Data/DataSPIF.csv', 'r')
for line in f:
	items = line.split(',')
	if len(items) == 3:
		r.append(Resource(items[0], float(items[1]), float(items[2])))
	else:
		a.append(Resource(items[0], float(items[1]), float(items[2])))

for i in range(0, 100):
	sdi = SchemaData()
	sdi.resource = copy.deepcopy(r)
	sdi.activity = copy.deepcopy(a)
	sdi.allocation = []
	scheduleResources(sdi)
	print str(i) + ":" + str(sum(i.dist for i in sdi.allocation))
