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
            println(r)
        else
              a = Activity(items[1],parse(Float64,items[2]),parse(Float64,items[3]))
              push!(activities,a)
            println(a)
        end
    end
end

for i in 0:1
    sdi = SchemaData(copy(activities),copy(resources),Allocation[])
#	gp.scheduleResources(sdi)
#	puts i.to_s + ":" + (sdi.allocation.reduce(0) { |sum,x| sum + x.dist }).to_s
end
