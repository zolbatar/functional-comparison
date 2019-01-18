// javac Greedy.java -Xdiags:verbose
// time java -server -Xms1024m -XX:+UseG1GC `basename Greedy .java`

import java.util.*;
import java.nio.file.*;
import java.nio.file.Files.*;
import java.util.stream.Collectors;
import java.io.IOException;

class Greedy {
    final static double earthRadiusM = 6367450;
    final static double convert2Rad = Math.PI / 180.0;
    final static double convert2Deg = 180.0 / Math.PI;
    final static double seconds_per_metre = 0.0559234073;

    static class Activity 
    {
        public String id;
        public double lat;
        public double lon;
    }

    static class Resource 
    {
        public String id;
        public double lat;
        public double lon;
    }

    static class Allocation
    {
        public String resourceId;
        public String activityId;
        public double distance;
    }

    static class SchemaData
    {
        public Map<String, Activity> activity = new HashMap<>();
        public List<Resource> resource = new LinkedList<>();
        public List<Allocation> allocation = new LinkedList<>();
    }

    private static double distanceBetweenPointsLatLong(double lat1, double lon1, double lat2, double lon2) {
        double dStartLatInRad = lat1 * convert2Rad;
        double dStartLongInRad = lon1 * convert2Rad;
        double dEndLatInRad = lat2 * convert2Rad;
        double dEndLongInRad = lon2 * convert2Rad;
        double dLongitude = dEndLongInRad - dStartLongInRad;
        double dLatitude = dEndLatInRad - dStartLatInRad;
        double dSinHalfLatitude = Math.sin(dLatitude * 0.5);
        double dSinHalfLongitude = Math.sin(dLongitude * 0.5);
        double a = dSinHalfLatitude*dSinHalfLatitude + Math.cos(dStartLatInRad)*Math.cos(dEndLatInRad)*dSinHalfLongitude*dSinHalfLongitude;
        double c = Math.atan2(Math.sqrt(a), Math.sqrt(1.0-a));
        return earthRadiusM * (c + c);
    }

    private static SchemaData Build(List<String> lines) {
        SchemaData sd = new SchemaData();
        for (String line : lines) {
            String[] split = line.split(",");
            double lat = Double.parseDouble(split[1]);
            double lon = Double.parseDouble(split[2]);
            switch (split.length) {
                case 3:
                    Resource r = new Resource();
                    r.id = split[0];
                    r.lat = lat;
                    r.lon = lon;
                    sd.resource.add(r);
                    break;
                case 4:
                    Activity a = new Activity();
                    a.id = split[0];
                    a.lat = lat;
                    a.lon = lon;
                    sd.activity.put(a.id, a);
                    break;
            }
        }
        return sd;
    }

    private static void scheduleResources(SchemaData sd) {
        for (Resource res : sd.resource) {
            for (int c = 0; c < 50; c++) {
                double lowest = Double.POSITIVE_INFINITY;
                String lowestid = "";
                for (Activity act : sd.activity.values()) {
                    double dist = distanceBetweenPointsLatLong(res.lat, res.lon, act.lat, act.lon);
                    if (dist < lowest) {
                        lowest = dist;
                        lowestid = act.id;
                    }
                }
                Allocation a = new Allocation();
                a.resourceId = res.id;
                a.activityId = lowestid;
                a.distance = lowest;
                sd.allocation.add(a);
                sd.activity.remove(lowestid);
            }
        }
    }

    public static void main(String [] args) throws IOException
    {
        List<String> teams = java.nio.file.Files.lines(Paths.get("../Data/","DataSPIF.csv")).collect(Collectors.toList());  
        SchemaData sd = Build(teams);
        for (int i = 0; i < 500; i++) {
            SchemaData sdLoop = new SchemaData();
            sdLoop.activity = new HashMap<>(sd.activity);
            sdLoop.resource = new LinkedList<>(sd.resource);
            scheduleResources(sdLoop);
            double sum = 0;
            for (Allocation a : sdLoop.allocation) {
                sum += a.distance;
            }
            System.out.println(i + " : " + sum);
        }
    }
}
