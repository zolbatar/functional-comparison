class Activity
attr_reader :id, :lat, :lon
	def initialize(id, lat, lon)
		@id = id
		@lat = lat
		@lon = lon
	end
end

class Resource
attr_reader :id, :lat, :lon
	def initialize(id, lat, lon)
		@id = id
		@lat = lat
		@lon = lon
	end
end

class Allocation
attr_reader :rid, :aid, :dist
	def initialize(rid, aid, dist)
		@rid = rid
		@aid = aid
		@dist = dist
	end
end

class SchemaData
attr_accessor :activity, :resource, :allocation
	def initialize
		@activity = Array.new
		@resource = Array.new 
		@allocation = Array.new
	end
end

class Greedy

	@@earthRadiusM = 6367450
	@@convert2Rad = Math::PI / 180.0
	@@convert2Deg = 180.0 / Math::PI
	@@seconds_per_metre = 0.0559234073

	def distanceBetweenPointsLatLong(lat1, lon1, lat2, lon2)
		dStartLatInRad = lat1 * @@convert2Rad
		dStartLongInRad = lon1 * @@convert2Rad
		dEndLatInRad = lat2 * @@convert2Rad
		dEndLongInRad = lon2 * @@convert2Rad
		dLongitude = dEndLongInRad - dStartLongInRad
		dLatitude = dEndLatInRad - dStartLatInRad
		dSinHalfLatitude =  Math.sin(dLatitude * 0.5)
		dSinHalfLongitude = Math.sin(dLongitude * 0.5)
		a = dSinHalfLatitude * dSinHalfLatitude + Math.cos(dStartLatInRad) * Math.cos(dEndLatInRad) * dSinHalfLongitude * dSinHalfLongitude
		c = Math.atan2(Math.sqrt(a), Math.sqrt(1.0 - a))
		@@earthRadiusM * (c + c)
	end

	def scheduleResources(sd)
		sd.resource.each do |res|
			50.times do |c|
				lowest = (2**(0.size * 8 -2) -1).to_f
				lowestact = nil
				sd.activity.each do |act|
					dist = distanceBetweenPointsLatLong(res.lat, res.lon, act.lat, act.lon)
					if dist < lowest
						lowest = dist
						lowestact = act 
					end
				end
				sd.allocation << (Allocation.new(res.id, lowestact.id, lowest))
				sd.activity.delete(lowestact)
			end
		end
	end
end

sd = SchemaData.new
puts sd.allocation
File.open('../Data/DataSPIF.csv').each do |line|
  items = line.split(',')
  case items.count
  when 3
  	r = Resource.new(items[0], items[1].to_f, items[2].to_f)
  	sd.resource << r
  when 4
  	a = Activity.new(items[0], items[1].to_f, items[2].to_f)
  	sd.activity << a
  end
end

gp = Greedy.new
10.times do |i|
  sdi = SchemaData.new
  sdi.resource = sd.resource.clone
  sdi.activity = sd.activity.clone
	gp.scheduleResources(sdi)
	puts i.to_s + ":" + (sdi.allocation.reduce(0) { |sum,x| sum + x.dist }).to_s
end

