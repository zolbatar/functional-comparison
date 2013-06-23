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
		public Dictionary<string, Activity> activity; 
		public Dictionary<string, Resource> resource; 
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

		static void scheduleResource(Resource r, int c, SchemaData sd) 
		{
			switch (c) {
			case 0:
				if (sd.resource.Count == 0) {
					return;
				} else {
					var i = sd.resource.First ();
					sd.resource.Remove(i.Key);
					scheduleResource (i.Value, 5, sd);
				}
				break;
			default:
				var l = new Dictionary<double, Activity> ();
				foreach (var x in sd.activity.Values) {
					l.Add (distanceBetweenPointsLatLong (r.lat, r.lon, x.lat, x.lon), x);
				}
				var f = l.OrderByDescending (x => x.Key).First ();
				var all = new Allocation ();
				all.activityId = f.Value.id;
				all.distance = f.Key;
				all.resourceId = r.id;
				sd.allocation.Add (all);
				sd.activity.Remove (f.Value.id);
				scheduleResource (r, c - 1, sd);
				break;
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
				sd.resource.Add (r.id, r);
			} else if (x.Length == 4) {
				var a = new Activity ();
				a.id = x [0];
				a.lat = Convert.ToDouble (x[1]);
				a.lon = Convert.ToDouble (x[2]);
				sd.activity.Add (a.id, a);
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
			sd.activity = new Dictionary<string, Activity> ();
			sd.resource = new Dictionary<string, Resource> ();
			sd.allocation = new List<Allocation> ();
			importCSV (lines, sd);
			for (var i = 1; i < 1000; i++) 
			{
				var sd2 = sd.DeepClone ();
				var r = sd2.resource.First();
				sd2.resource.Remove (r.Key);
				scheduleResource (r.Value, 5, sd2);
				var total = sd2.allocation.Sum (x => x.distance);
				Console.WriteLine (i.ToString() + ":" + total);
			}
		}
	}
}

