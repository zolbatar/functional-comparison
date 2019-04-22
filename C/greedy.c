// clang greedy.c -O3 -o greedy -lm

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <math.h>
#include <float.h>

#define NUM_RESOURCES 10
#define NUM_ACTIVITIES 500
#define NUM_ALLOCATIONS 500

typedef struct Activity
{
	char* id;
	double lat;
	double lon;
    int used;
} t_activity;

typedef struct Resource
{
	char* id;
	double lat;
	double lon;
} t_resource;

typedef struct Allocation
{
	char* rid;
	char* aid;
	double dist;
} t_allocation;

typedef struct SchemaData
{
    t_activity activity[NUM_ACTIVITIES];
    t_resource resource[NUM_RESOURCES];
    t_allocation allocation[NUM_ALLOCATIONS];
} t_schemadata;

#define M_PI 3.14159265358979323846
#define earthRadius 6367450.0
#define convert2Rad (M_PI / 180.0)

double distanceBetweenPointsLatLong(double lat1, double lon1, double lat2, double lon2)
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

void scheduleResources(t_schemadata *sd, int run)
{
    int alloc_index = 0;
    double total;
    for (int ri = 0; ri < NUM_RESOURCES; ri++) {
        t_resource r = sd->resource[ri];
		for (int c = 0; c < 50; c++)
		{
            double lowest = DBL_MAX;
            int lowestIndex;
            for (int ai = 0; ai < NUM_ACTIVITIES; ai++) {
                t_activity a = sd->activity[ai];
                if (a.used == 0) {
    				double dist = distanceBetweenPointsLatLong(r.lat, r.lon, a.lat, a.lon);
                    if (dist < lowest) {
                        lowest = dist;
                        lowestIndex = ai;
                    }
                }
            }
//            printf("%s %f %f %f %f %f %d\n", r.id, r.lat, r.lon, sd->activity[lowestIndex].lat, sd->activity[lowestIndex].lon, lowest, alloc_index);
			t_allocation a;
			a.rid = r.id;
			a.aid = sd->activity[lowestIndex].id;
			a.dist = lowest;
            sd->allocation[alloc_index++] = a;
            sd->activity[lowestIndex].used = 1;
            total += lowest;
        }
        printf("Run %d, total: %f\n", run, total);
    }
}

char** str_split(char* a_str, const char a_delim)
{
    char** result    = 0;
    size_t count     = 0;
    char* tmp        = a_str;
    char* last_comma = 0;
    char delim[2];
    delim[0] = a_delim;
    delim[1] = 0;

    /* Count how many elements will be extracted. */
    while (*tmp)
    {
        if (a_delim == *tmp)
        {
            count++;
            last_comma = tmp;
        }
        tmp++;
    }

    /* Add space for trailing token. */
    count += last_comma < (a_str + strlen(a_str) - 1);

    /* Add space for terminating null string so caller
       knows where the list of returned strings ends. */
    count++;

    result = malloc(sizeof(char*) * count);

    if (result)
    {
        size_t idx  = 0;
        char* token = strtok(a_str, delim);

        while (token)
        {
            assert(idx < count);
            *(result + idx++) = strdup(token);
            token = strtok(0, delim);
        }
        assert(idx == count - 1);
        *(result + idx) = 0;
    }

    return result;
}

int main()
{
	// Read in CSV file line by line and import
    FILE *file = fopen("../Data/DataSPIF.csv", "r");
    char currentline[100];
    t_activity activity[NUM_ACTIVITIES];
    t_resource resource[NUM_RESOURCES];
    int activity_id = 0;
    int resource_id = 0;
    while (fgets(currentline, sizeof(currentline), file) != NULL) {
        char **tokens = str_split(currentline, ',');
        if (tokens)
        {
            t_activity a;
            t_resource r;
            switch (tokens[0][0]) {
                case 'R':
                    r.id = tokens[0];
                    r.lat = atof(tokens[1]);
                    r.lon = atof(tokens[2]);
                    resource[resource_id++] = r;
                    break;
                case 'A':
                    a.id = tokens[0];
                    a.lat = atof(tokens[1]);
                    a.lon = atof(tokens[2]);
                    a.used = 0;
                    activity[activity_id++] = a;
                    break;
            }
        }
    }

	// Schedule
	for (int i = 0; i < 100; i++)
	{
		t_schemadata sd;
        memcpy(sd.activity, activity, sizeof(activity));
        memcpy(sd.resource, resource, sizeof(resource));
		scheduleResources(&sd, i);
	}
	return 0;
}
