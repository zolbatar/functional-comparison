﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace Greedy
{
    class MainClass
    {
        class Activity
        {
            public string id;
            public double lat;
            public double lon;
        }

        class Resource
        {
            public string id;
            public double lat;
            public double lon;
        }

        class Allocation
        {
            public string resourceId;
            public string activityId;
            public double distance;
        }

        class SchemaData
        {
            public List<Activity> activity;
            public List<Resource> resource;
            public List<Allocation> allocation;
        }

        class Program
        {
            static double earthRadius = 6367450.0; // geometric mean value gives about .1% error
            static double convert2Rad = Math.PI / 180.0;

            static double distanceBetweenPointsLatLong(double lat1, double lon1, double lat2, double lon2)
            {
                double dStartLatInRad = lat1 * convert2Rad;
                double dStartLongInRad = lon1 * convert2Rad;
                double dEndLatInRad = lat2 * convert2Rad;
                double dEndLongInRad = lon2 * convert2Rad;
                double dLongitude = dEndLongInRad - dStartLongInRad;
                double dLatitude = dEndLatInRad - dStartLatInRad;
                double dSinHalfLatitude = Math.Sin(dLatitude * 0.5);
                double dSinHalfLongitude = Math.Sin(dLongitude * 0.5);
                double a = dSinHalfLatitude * dSinHalfLatitude + Math.Cos(dStartLatInRad) * Math.Cos(dEndLatInRad) * dSinHalfLongitude * dSinHalfLongitude;
                double c = Math.Atan2(Math.Sqrt(a), Math.Sqrt(1.0 - a));
                return (earthRadius * (c + c));
            }

            static void scheduleResources(int c, SchemaData sd)
            {
                foreach (var r in sd.resource)
                {
                    for (int i = 0; i < c; i++)
                    {
                        var lowest = Double.MaxValue;
                        Activity lowestItem = null;
                        foreach (var x in sd.activity)
                        {
                            var dist = distanceBetweenPointsLatLong(r.lat, r.lon, x.lat, x.lon);
                            if (dist < lowest)
                            {
                                lowest = dist;
                                lowestItem = x;
                            }
                        }
                        var all = new Allocation();
                        all.activityId = lowestItem.id;
                        all.distance = lowest;
                        all.resourceId = r.id;
                        sd.allocation.Add(all);
                        sd.activity.Remove(lowestItem);
                    }
                }
            }

            static void importLine(string[] x, List<Activity> al, List<Resource> rl)
            {
                var lat = Convert.ToDouble(x[1]);
                var lon = Convert.ToDouble(x[2]);
                if (x.Length == 3)
                {
                    var r = new Resource();
                    r.id = x[0];
                    r.lat = lat;
                    r.lon = lon;
                    rl.Add(r);
                }
                else if (x.Length == 4)
                {
                    var a = new Activity();
                    a.id = x[0];
                    a.lat = lat;
                    a.lon = lon;
                    al.Add(a);
                }
            }

            static void importCSV(string[] lines, List<Activity> al, List<Resource> rl)
            {
                foreach (var l in lines)
                {
                    importLine(l.Split(','), al, rl);
                }
            }

            public static void Main(string[] args)
            {
                var lines = System.IO.File.ReadAllLines(@"../../Data/DataSPIF.csv");
                var al = new List<Activity>();
                var rl = new List<Resource>();
                importCSV(lines, al, rl);
                for (var i = 1; i <= 100; i++)
                {
                    var sd2 = new SchemaData();
                    sd2.resource = rl.ToList();
                    sd2.activity = al.ToList();
                    sd2.allocation = new List<Allocation>();
                    scheduleResources(50, sd2);
                    var total = 0.0;
                    foreach (var a in sd2.allocation)
                    {
                        total += a.distance;
                    }
                    Console.WriteLine(i.ToString() + ":" + total);
                }
            }
        }
    }
}
