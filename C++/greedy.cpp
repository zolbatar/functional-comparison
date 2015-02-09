// clang++ greedy.cpp -O3 -o greedy

#include <float.h>
#include <iostream>
#include <fstream>
#include <list>	
#include <boost/math/constants/constants.hpp>

using std::string;

class Activity 
{
public:
	string id;
	double lat;
	double lon;
};

class Resource 
{
public:
	string id;
	double lat;
	double lon;
};

class Allocation
{
public:
	string rid;
	string aid;
	double dist;
};

class SchemaData
{
public:
	std::list<Activity *> activity; 
	std::list<Resource *> resource; 
	std::list<Allocation *> allocation; 
};

const double pi = boost::math::constants::pi<double>();
const double earthRadius = 6367450.0; // geometric mean value gives about .1% error
const double convert2Rad = pi / 180.0;

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

void importCSV(std::list<string>& lines, std::list<Activity *> *al, std::list<Resource *> *rl)
{
	string delimiter = ",";
	for (std::list<string>::iterator it = lines.begin(); it != lines.end(); ++it)
	{
		std::list<string> splits;
		size_t pos = 0;
		string token;
		while ((pos = (*it).find(delimiter)) != std::string::npos) {
		    token = (*it).substr(0, pos);
		    splits.push_back(token);
		    (*it).erase(0, pos + delimiter.length());
		}
		splits.push_back(*it);
		switch (splits.size())
		{
			case 3:
			{
				Resource *r = new Resource();
				r->id = splits.front();
				splits.pop_front();
				r->lat = atof(splits.front().c_str());
				splits.pop_front();
				r->lon = atof(splits.front().c_str());
				rl->push_back(r);
				break;
			}
			case 4:
			{
				Activity *a = new Activity();
				a->id = splits.front();
				splits.pop_front();
				a->lat = atof(splits.front().c_str());
				splits.pop_front();
				a->lon = atof(splits.front().c_str());
				al->push_back(a);
				break;
			}
		}
	}
}

void scheduleResources(SchemaData& sd) {
	for (std::list<Resource *>::iterator it = sd.resource.begin(); it != sd.resource.end(); ++it)
	{
		for (int c = 0; c < 50; c++) 
		{
			double lowest = DBL_MAX;
			std::list<Activity *>::iterator lowestobj;

			// See which is closest
			for (std::list<Activity *>::iterator ait = sd.activity.begin(); ait != sd.activity.end(); ++ait)
			{
				double dist = distanceBetweenPointsLatLong((*it)->lat, (*it)->lon, (*ait)->lat, (*ait)->lon);
				if (dist < lowest) 
				{
					lowest = dist;
					lowestobj = ait;
				}
			}
			Allocation *a = new Allocation();
			a->rid = (*it)->id;
			a->aid = (*lowestobj)->id;
			a->dist = lowest;
			sd.allocation.push_back(a);
			sd.activity.erase(lowestobj);
		}
	}
}

int main()
{
	// Read in CSV file
	std::list<string> csvLines;
	string line;
	std::ifstream csv ("/Users/daryl/Development/Projects/FunctionalComparison/Data/DataSPIF.csv");
	if (csv.is_open())
	{
		while (getline(csv, line))
		{
			csvLines.push_back(line);
		}
		csv.close();
	}
	else
	{
		std::cout << "Unable to open file" << std::endl << std::endl;
	}

	// Import each CSV line in turn
    std::list<Activity *> al;
	std::list<Resource *> rl;
	importCSV(csvLines, &al, &rl);

	for (int i = 0; i < 100	; i++)
	{
		SchemaData *sd = new SchemaData();
		sd->activity = std::list<Activity *>(al);
		sd->resource = std::list<Resource *>(rl);
		scheduleResources(*sd);	

		// Total
		double sum = 0.0;
		for (std::list<Allocation *>::iterator it = sd->allocation.begin(); it != sd->allocation.end(); ++it)
		{
			sum += (*it)->dist;
		}
		std::cout << i << " : " << sum << std::endl;

	}

	return 0;
}