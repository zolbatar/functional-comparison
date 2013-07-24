import java.lang.Math._
import scala.collection.mutable.HashMap

object Start {

  case class Activity(id: String, lat: Double, lng: Double)
  case class Resource(id: String, lat: Double, lng: Double)
  case class Allocation(resourceId: String, activityId: String, distance: Double)
  case class SchemaData(activities: HashMap[String, Activity] = new HashMap[String, Activity], resources: List[Resource] = List(), allocations: List[Allocation] = List())

  val earthRadiusM: Double = 6367450
  val convert2Rad: Double = PI / 180.0
  val convert2Deg: Double = 180.0 / PI
  val seconds_per_metre: Double = 0.0559234073

  def distanceBetweenPointsLatLong(lat1: Double, lon1: Double, lat2: Double, lon2: Double): Double = {

    val dStartLatInRad = lat1 * convert2Rad
    val dStartLongInRad = lon1 * convert2Rad
    val dEndLatInRad = lat2 * convert2Rad
    val dEndLongInRad = lon2 * convert2Rad

    val dLongitude = dEndLongInRad - dStartLongInRad
    val dLatitude = dEndLatInRad - dStartLatInRad

    val dSinHalfLatitude = sin(dLatitude * 0.5)
    val dSinHalfLongitude = sin(dLongitude * 0.5)
    val a = dSinHalfLatitude * dSinHalfLatitude +
      cos(dStartLatInRad) * cos(dEndLatInRad) *
      dSinHalfLongitude * dSinHalfLongitude
    val c = atan2(sqrt(a), sqrt(1.0 - a))

    earthRadiusM * (c + c)
  }

/*  def scheduleResource(r: Resource, c: Int, sd: SchemaData): SchemaData = {
    c match {
      case 0 => 
        sd.resources.length match {
          case 0 => sd
          case _ => scheduleResource(sd.resources.head,50,sd.copy(resources = sd.resources.tail))
        }
      case c =>
        val (aid, dist) = 
        sd.activities.map(x => (x.id, distanceBetweenPointsLatLong(r.lat, r.lng, x.lat, x.lng))).sortBy(_._2).head
        scheduleResource(r, c-1, sd.copy(
          activities = sd.activities.filter(x => x.id != aid),
          allocations = new Allocation(activityId = aid, resourceId = r.id, distance = dist) :: sd.allocations))
    }
  }*/

  def scheduleResourceSimple(sd: SchemaData): SchemaData = {
    var lsd = sd.copy()
//    var allocations: List[Allocation] = List()
    for (r <- lsd.resources) {
      for (i <- 1 to 50) {

        var lowest = Double.MaxValue
        var aid = ""
        for (a <- lsd.activities) {
          val dist = distanceBetweenPointsLatLong(r.lat, r.lng, a._2.lat, a._2.lng)
          if (dist < lowest) {
            lowest = dist
            aid = a._1
          }
        }
        lsd = lsd.copy(
//          activities = lsd.activities.filterNot(x => x == aid),
          lsd.activities -= aid,
          allocations = new Allocation(activityId = aid, resourceId = r.id, distance = lowest) :: lsd.allocations)
      }
    }
    return lsd
  }

  def importLine(x: Array[String], sd: SchemaData): SchemaData = {
    x.length match {
      case 3 => 
        val r = new Resource(id = x(0), lat = x(1).toDouble, lng = x(2).toDouble)
        sd.copy(resources = sd.resources :+ r)
      case 4 =>
        val a = new Activity(id = x(0), lat = x(1).toDouble, lng = x(2).toDouble)
        sd.activities += a.id -> a
        sd
//        sd.copy(activities = sd.activities :+ a)
    }
  }

  def importCSV(lines: Seq[Array[String]], sd: SchemaData): SchemaData = {
    lines match {
      case Seq() => sd
      case Seq(x) => importLine(x, sd)
      case Seq(x, xs @ _*) => importCSV(xs, importLine(x, sd))
    }
  }

  def functional() {
/*    val path = "/Users/daryl/Development/Projects/FunctionalComparison/Data/DataSPIF.csv"
    val lines = (for (line <- scala.io.Source.fromFile(path).getLines()) yield line.split(",")).toSeq
    val sd = importCSV(lines, new SchemaData())
    for (i <- 1 to 100) {
      val res = scheduleResource(sd.resources.head, 50, sd.copy(resources = sd.resources.tail))
      val total = res.allocations.map(x => x.distance).fold(0.0)(_+_)
      println(i.toString() + ":" + total)
    }*/
  }

  def simplified() {
    //val path = "/Users/daryl/Development/Projects/FunctionalComparison/Data/DataSPIF.csv"
    val path = "D:/Development/FunctionalComparison/Data/DataSPIF.csv"
    val lines = (for (line <- scala.io.Source.fromFile(path).getLines()) yield line.split(",")).toSeq
    val sd = importCSV(lines, new SchemaData())
    for (i <- 1 to 100) {
      val lsd = sd.copy(activities = HashMap() ++= sd.activities)
      val res = scheduleResourceSimple(lsd)
      val total = res.allocations.map(x => x.distance).fold(0.0)(_+_)
      println(i.toString() + ":" + total)
    }
  }

  def main(args: Array[String]) {
    if (args(0) == "S") {
      simplified();
    } else {
      functional();
    }
  }

}