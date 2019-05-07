import kotlinx.cinterop.*
import kotlin.math.PI
import platform.posix.*

data class Activity(val id: String, val lat: Double, val lon: Double)
data class Resource(val id: String, val lat: Double, val lon: Double)
data class Allocation(val resourceId: String, val activityId: String, val distance: Double)

class SchemaData {
    var activity: MutableMap<String, Activity> = HashMap<String, Activity>()
    var resource: MutableList<Resource> = mutableListOf<Resource>()
    var allocation: MutableList<Allocation> = mutableListOf<Allocation>()
}

val earthRadiusM = 6367450.0
val convert2Rad = PI / 180.0
val convert2Deg = 180.0 / PI
val seconds_per_metre = 0.0559234073

fun distanceBetweenPointsLatLong(lat1: Double, lon1: Double, lat2: Double, lon2: Double): Double {
    val dStartLatInRad = lat1 * convert2Rad
    val dStartLongInRad = lon1 * convert2Rad
    val dEndLatInRad = lat2 * convert2Rad
    val dEndLongInRad = lon2 * convert2Rad
    val dLongitude = dEndLongInRad - dStartLongInRad
    val dLatitude = dEndLatInRad - dStartLatInRad
    val dSinHalfLatitude = sin(dLatitude * 0.5)
    val dSinHalfLongitude = sin(dLongitude * 0.5)
    val a = dSinHalfLatitude * dSinHalfLatitude + cos(dStartLatInRad) * cos(dEndLatInRad) * dSinHalfLongitude * dSinHalfLongitude
    val c = atan2(sqrt(a), sqrt(1.0 - a))
    return earthRadiusM * (c + c)
}

fun Build(lines: MutableList<String?>): SchemaData {
    val sd = SchemaData()
    for (line in lines) {
        val split = line!!.split(",".toRegex()).dropLastWhile({ it.isEmpty() }).toTypedArray()
        val lat = split[1].toDouble()
        val lon = split[2].toDouble()
        when (split.size) {
            3 -> {
                val r = Resource(split[0], lat, lon)
                sd.resource.add(r)
            }
            4 -> {
                val a = Activity(split[0], lat, lon)
                sd.activity[a.id] = a
            }
        }
    }
    return sd
}

fun scheduleResources(sd: SchemaData) {
    for (res in sd.resource) {
        for (c in 0..49) {
            var lowest = Double.MAX_VALUE
            var lowestid: String = ""
            for (act in sd.activity.values) {
                val dist = distanceBetweenPointsLatLong(res.lat, res.lon, act.lat, act.lon)
                if (dist < lowest) {
                    lowest = dist
                    lowestid = act.id
                }
            }
            val a = Allocation(res.id, lowestid, lowest)
            sd.allocation.add(a)
            sd.activity.remove(lowestid)
        }
    }
}

fun main(args: Array<String>) {
    val file = fopen("../Data/DataSPIF.csv", "r")
    val teams = mutableListOf<String?>()
    memScoped {
        val bufferLength = 1024
        val buffer = allocArray<ByteVar>(bufferLength)
        for (i in 1..510) {
            val nextLine = fgets(buffer, bufferLength, file)?.toKString()
            teams.add(nextLine)
        }
    }
    val sd = Build(teams)
    for (i in 0..99) {
        val sdLoop = SchemaData()
        sdLoop.activity = HashMap<String, Activity>(sd.activity)
        sdLoop.resource = sd.resource
        scheduleResources(sdLoop)
        var sum = 0.0
        for (a in sdLoop.allocation) {
            sum += a.distance
        }
        println("$i : $sum")
    }
}
