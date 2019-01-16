struct Activity
	id::String
	lat::Float64
	lon::Float64
    Activity(id,lat,lng) = new(id,lat,lng)
end

struct Resource
	id::String
	lat::Float64
	lon::Float64
    Resource(id,lat,lng) = new(id,lat,lng)
end

struct Allocation
	rid::String
	aid::String
	dist::Float64
    Allocation(rid,aid,dist) = new(rid,aid,dist)
end

struct SchemaData
    activity::Array{Activity}
    resource::Array{Resource}
    allocation::Array{Allocation}
    SchemaData(activity,resource,allocation) = new(activity,resource,allocation)
end

activities = Activity[]
resources = Resource[]
open("../Data/DataSPIF.csv") do f
    lines = readlines(f)
    for line in lines
        items = split(line, ",")
        l = length(items)
        if l == 3
            r = Resource(items[1],parse(Float64,items[2]),parse(Float64,items[3]))
            push!(resources,r)
            #println(r)
        else
            a = Activity(items[1],parse(Float64,items[2]),parse(Float64,items[3]))
            push!(activities,a)
            #println(a)
        end
    end
end

function distanceBetweenPointsLatLong(lat1, lon1, lat2, lon2)
    const earthRadiusM::Float64 = 6367450.0
    const convert2Rad::Float64 = pi / 180.0
    const convert2Deg::Float64 = 180.0 / pi
    const seconds_per_metre::Float64 = 0.0559234073
    dStartLatInRad = lat1 * convert2Rad
    dStartLongInRad = lon1 * convert2Rad
    dEndLatInRad = lat2 * convert2Rad
    dEndLongInRad = lon2 * convert2Rad
    dLongitude = dEndLongInRad - dStartLongInRad
    dLatitude = dEndLatInRad - dStartLatInRad
    dSinHalfLatitude =  sin(dLatitude * 0.5)
    dSinHalfLongitude = sin(dLongitude * 0.5)
    a = dSinHalfLatitude * dSinHalfLatitude + cos(dStartLatInRad) * cos(dEndLatInRad) * dSinHalfLongitude * dSinHalfLongitude
    c = atan2(sqrt(a), sqrt(1.0 - a))
    earthRadiusM * (c + c)
end

function scheduleResources(sd)
    for res in sd.resource 
        for c in 1:50
            lowest = typemax(Float64)
            lowestact = Activity("",0.0,0.0)
            lowestidx = 0
            for (i,act) in enumerate(sd.activity)
                dist = distanceBetweenPointsLatLong(res.lat, res.lon, act.lat, act.lon)
                if dist < lowest
                    lowest = dist
                    lowestact = act 
                    lowestidx = i
                end
            end
            push!(sd.allocation,Allocation(res.id, lowestact.id, lowest))
            deleteat!(sd.activity, lowestidx)
        end
    end
end

function run()
    earthRadiusM = 6367450.0
    convert2Rad = pi / 180.0
    convert2Deg = 180.0 / pi
    seconds_per_metre = 0.0559234073

    for i in 1:100
        sd = SchemaData(copy(activities),copy(resources),Allocation[])
        scheduleResources(sd)
        f = map(x -> x.dist,sd.allocation)
        println(string(i) * ":" * string(sum(f)))
    end
end

run()