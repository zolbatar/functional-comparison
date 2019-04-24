class Activity
  getter :id, :lat, :lon
  @id : String
  @lat : Float64
  @lon : Float64

  def initialize(id, lat, lon)
    @id = id
    @lat = lat
    @lon = lon
  end

  def_clone
end

class Resource
  getter :id, :lat, :lon
  @id : String
  @lat : Float64
  @lon : Float64

  def initialize(id, lat, lon)
    @id = id
    @lat = lat
    @lon = lon
  end

  def_clone
end

class Allocation
  getter :rid, :aid, :dist
  @rid : String
  @aid : String
  @dist : Float64

  def initialize(rid, aid, dist)
    @rid = rid
    @aid = aid
    @dist = dist
  end
end

class SchemaData
  property :activity, :resource, :allocation

  def initialize
    @activity = Array(Activity).new
    @resource = Array(Resource).new
    @allocation = Array(Allocation).new
  end
end

class Greedy
  @@earthRadiusM : Float64 = 6367450.0
  @@convert2Rad : Float64 = Math::PI / 180.0
  @@convert2Deg : Float64 = 180.0 / Math::PI
  @@seconds_per_metre : Float64 = 0.0559234073

  def distanceBetweenPointsLatLong(lat1, lon1, lat2, lon2)
    dStartLatInRad = lat1 * @@convert2Rad
    dStartLongInRad = lon1 * @@convert2Rad
    dEndLatInRad = lat2 * @@convert2Rad
    dEndLongInRad = lon2 * @@convert2Rad
    dLongitude = dEndLongInRad - dStartLongInRad
    dLatitude = dEndLatInRad - dStartLatInRad
    dSinHalfLatitude = Math.sin(dLatitude * 0.5)
    dSinHalfLongitude = Math.sin(dLongitude * 0.5)
    a = dSinHalfLatitude * dSinHalfLatitude + Math.cos(dStartLatInRad) * Math.cos(dEndLatInRad) * dSinHalfLongitude * dSinHalfLongitude
    c = Math.atan2(Math.sqrt(a), Math.sqrt(1.0 - a))
    @@earthRadiusM * (c + c)
  end

  def scheduleResources(sd)
    sd.resource.each do |res|
      50.times do |c|
        lowest = Float64::MAX
        lowestact : Activity = Activity.new("", 0.0, 0.0)
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
File.each_line("../Data/DataSPIF.csv") do |line|
  items = line.split(',')
  case items.size
  when 3
    r = Resource.new(items[0], items[1].to_f, items[2].to_f)
    sd.resource << r
  when 4
    a = Activity.new(items[0], items[1].to_f, items[2].to_f)
    sd.activity << a
  end
end

gp = Greedy.new
100.times do |i|
  sdi = SchemaData.new
  sdi.resource = sd.resource.clone
  sdi.activity = sd.activity.clone
  gp.scheduleResources(sdi)
  puts i.to_s + ":" + (sdi.allocation.reduce(0) { |sum, x| sum + x.dist }).to_s
end
