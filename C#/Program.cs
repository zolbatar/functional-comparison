using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

namespace CSharp
{
	public static class ExtensionMethods
	{
		// Deep clone
		public static T DeepClone<T>(this T a)
		{
			using (MemoryStream stream = new MemoryStream())
			{
				BinaryFormatter formatter = new BinaryFormatter();
				formatter.Serialize(stream, a);
				stream.Position = 0;
				return (T) formatter.Deserialize(stream);
			}
		}
	}

	[Serializable]
	class Activity 
	{
		public string id;
		public double lat;
		public double lon;
	}

	[Serializable]
	class Resource 
	{
		public string id;
		public double lat;
		public double lon;
	}

	[Serializable]
	class Allocation
	{
		public string resourceId;
		public string activityId;
		public double distance;
	}

	[Serializable]
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
		static double convert2Deg = 180.0 / Math.PI;
		static double seconds_per_metre = 0.0559234073;

		static double distanceBetweenPointsLatLong (double lat1, double lon1, double lat2, double lon2)
		{
			double dStartLatInRad = lat1 * convert2Rad;
			double dStartLongInRad = lon1 * convert2Rad;
			double dEndLatInRad = lat2 * convert2Rad;
			double dEndLongInRad = lon2 * convert2Rad;
			double dLongitude = dEndLongInRad - dStartLongInRad;
			double dLatitude = dEndLatInRad - dStartLatInRad;
			double dSinHalfLatitude = Math.Sin (dLatitude * 0.5);
			double dSinHalfLongitude = Math.Sin (dLongitude * 0.5);
			double a = dSinHalfLatitude * dSinHalfLatitude + Math.Cos (dStartLatInRad) * Math.Cos (dEndLatInRad) * dSinHalfLongitude * dSinHalfLongitude;
			double c = Math.Atan2 (Math.Sqrt(a), Math.Sqrt (1.0 - a));
			return (earthRadius * (c + c));
		}

		static SchemaData scheduleResource(Resource r, int c, SchemaData sd) 
		{
			switch (c) {
			case 0:
				if (sd.resource.Count == 0) {
					return sd;
				} else {
					Resource i = sd.resource [0];
					sd.resource.RemoveAt (0);
					return scheduleResource (i, 5, sd);
				}
			default:
				var l = new SortedDictionary<double, Activity> ();
				foreach (var x in sd.activity) {
					l.Add (distanceBetweenPointsLatLong (r.lat, r.lon, x.lat, x.lon), x);
				}
				var f = l.FirstOrDefault ();
				sd.activity.Where (x => x.id != f.Value.id);
				var all = new Allocation ();
				all.activityId = f.Value.id;
				all.distance = f.Key;
				all.resourceId = r.id;
				sd.allocation.Add (all);
				return scheduleResource (r, c - 1, sd);
			}
		}

		static void importLine(string[] x, SchemaData sd)
		{
			if (x.Length == 3) 
			{
				var r = new Resource ();
				r.id = x [0];
				r.lat = Convert.ToDouble (x[1]);
				r.lon = Convert.ToDouble (x[2]);
				sd.resource.Add (r);
			} else if (x.Length == 4) {
				var a = new Activity ();
				a.id = x [0];
				a.lat = Convert.ToDouble (x[1]);
				a.lon = Convert.ToDouble (x[2]);
				sd.activity.Add (a);
			}		
		}

		static void importCSV(string[] lines, SchemaData sd)
		{
			foreach (var l in lines)
			{
				importLine (l.Split(','), sd);
			}
		}

		static void Main(string[] args)
		{
			var lines = System.IO.File.ReadAllLines(@"/Users/daryl/Development/Projects/FunctionalComparison/Data/DataSPIF.csv");
			var sd = new SchemaData (); 
			sd.activity = new List<Activity> ();
			sd.resource = new List<Resource> ();
			sd.allocation = new List<Allocation> ();
			importCSV (lines, sd);
			for (var i = 1; i < 1000; i++) 
			{
				var sd2 = sd.DeepClone ();
				var r = sd.resource [0];
				sd2.resource.RemoveAt(0);
				var res = scheduleResource (r, 5, sd2);
				var total = res.allocation.Sum (x => x.distance);
				Console.WriteLine (total);
			}
		}
	}
}

