#!/usr/bin/env rdmd

import std.stdio;
import std.container;
import std.algorithm;
import std.range;
import std.string;
import std.conv;
import std.math;

const double earthRadius = 6367450.0; // geometric mean value gives about .1% error
const double convert2Rad = PI / 180.0;

class Activity 
{
public:
    string id;
    double lat;
    double lon;
}

class Resource 
{
public:
    string id;
    double lat;
    double lon;
}

class Allocation
{
public:
    string rid;
    string aid;
    double dist;
}

class SchemaData
{
public:
    SList!Activity activity = SList!Activity();
    SList!Resource resource = SList!Resource();
}

void importCSV(SchemaData *sd, string[] lines) {
    foreach (line; lines) {
        auto s = line.split(",");
        auto id = s[0];
        auto lat = to!double(s[1]);
        auto lon = to!double(s[2]);
        final switch (s.length) {
            case 3:
                Resource r = new Resource();
                r.id = id;
                r.lat = lat;
                r.lon = lon;
                sd.resource.insert(r);
                break;
            case 4:
                Activity a = new Activity();
                a.id = id;
                a.lat = lat;
                a.lon = lon;
                sd.activity.insert(a);
                break;
        }
    }
	sd.resource.reverse();
}

double distanceBetweenPointsLatLong (double lat1, double lon1, double lat2, double lon2)
{
    double dStartLatInRad = lat1 * convert2Rad;
    double dStartLongInRad = lon1 * convert2Rad;
    double dEndLatInRad = lat2 * convert2Rad;
    double dEndLongInRad = lon2 * convert2Rad;
    double dLongitude = dEndLongInRad - dStartLongInRad;
    double dLatitude = dEndLatInRad - dStartLatInRad;
    double dSinHalfLatitude = sin(dLatitude * 0.5);
    double dSinHalfLongitude = sin(dLongitude * 0.5);
    double a = dSinHalfLatitude * dSinHalfLatitude + cos(dStartLatInRad) * cos(dEndLatInRad) * dSinHalfLongitude * dSinHalfLongitude;
    double c = atan2(sqrt(a), sqrt(1.0 - a));
    return (earthRadius * (c + c));
}

double scheduleResources(SchemaData *sd) {
    auto dupactivity = sd.activity.dup();
    auto allocation = SList!Allocation();
    foreach (res; sd.resource) {
        for (int c = 0; c < 50; c++) {
            auto lowest = double.max;
            Activity lowest_id = null;

            // See which is closest
            foreach (act; dupactivity) {
                double dist = distanceBetweenPointsLatLong(res.lat, res.lon, act.lat, act.lon);
                if (dist < lowest) {
                    lowest = dist;
                    lowest_id = act;
                }
            }
            Allocation a = new Allocation();
            a.rid = res.id;
            a.aid = lowest_id.id;
            a.dist = lowest;
            dupactivity.linearRemove(find(dupactivity[], lowest_id).take(1));
            allocation.insert(a);
        }
    }

    // Total
    double tot = 0.0;
    foreach (all; allocation) {
        tot += all.dist;
    }
    return tot;
}

string[] readLines(string filename) {
    auto f = File(filename);
    scope(exit) f.close();
    string[] lines;

    foreach (str; f.byLine) {
        lines ~= str.idup;
    }

    return lines;
}

void main()
{
    auto lines = readLines("../Data/DataSPIF.csv");
    auto sd = new SchemaData();
    importCSV(&sd, lines);
    for (int c = 0; c < 1000; c++) {
        auto tot = scheduleResources(&sd);
        writef("%d: %f\n", c, tot);
    }
}