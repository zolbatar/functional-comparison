#include <iostream>
#include <list>	

using namespace std;

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
	string resourceId;
	string activityId;
	double distance;
};

class SchemaData
{
public:
	list<Activity> activity; 
	list<Resource> resource; 
	list<Allocation> allocation; 
};

int main()
{
	return 0;
}