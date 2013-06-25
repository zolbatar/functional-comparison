package main

import (
	"os"
    "bufio"
    "bytes"
    "io"
    "fmt"
	"math"
	"strings"
	"strconv"
	)

type Activity struct {
	id string
	lat float64
	lon float64
}

type Resource struct {
	id string
	lat float64
	lon float64
}

type Allocation struct {
	rid string
	aid string
	dist float64
}

type SchemaData struct {
	activity map[string]Activity 
	resource map[string]Resource
	allocation []Allocation
}

var earthRadiusM float64 = 6367450
var convert2Rad float64 = math.Pi / 180.0
var convert2Deg float64 = 180.0 / math.Pi
var seconds_per_metre float64 = 0.0559234073

func readLines(path string) (lines []string, err error) {
    var (
        file *os.File
        part []byte
        prefix bool
    )
    if file, err = os.Open(path); err != nil {
        return
    }
    defer file.Close()

    reader := bufio.NewReader(file)
    buffer := bytes.NewBuffer(make([]byte, 0))
    for {
        if part, prefix, err = reader.ReadLine(); err != nil {
            break
        }
        buffer.Write(part)
        if !prefix {
            lines = append(lines, buffer.String())
            buffer.Reset()
        }
    }
    if err == io.EOF {
        err = nil
    }
    return
}

func distanceBetweenPointsLatLong(lat1 float64, lon1 float64, lat2 float64, lon2 float64) float64 {
		dStartLatInRad := lat1 * convert2Rad
		dStartLongInRad := lon1 * convert2Rad
		dEndLatInRad := lat2 * convert2Rad
		dEndLongInRad := lon2 * convert2Rad
		dLongitude := dEndLongInRad - dStartLongInRad
		dLatitude := dEndLatInRad - dStartLatInRad
		dSinHalfLatitude := math.Sin(dLatitude * 0.5)
		dSinHalfLongitude := math.Sin(dLongitude * 0.5)
		a := dSinHalfLatitude * dSinHalfLatitude + math.Cos(dStartLatInRad) * math.Cos(dEndLatInRad) * dSinHalfLongitude * dSinHalfLongitude
		c := math.Atan2(math.Sqrt(a), math.Sqrt(1.0 - a))
		return earthRadiusM * (c + c)
}

func scheduleResources(sd *SchemaData) {
	for xres, res := range sd.resource {
		for c := 0; c < 5; c++ {
			lowest := math.Inf(0)
			var lowestid = ""
			for xact, act := range sd.activity {
				dist := distanceBetweenPointsLatLong(res.lat, res.lon, act.lat, act.lon)
				if dist < lowest {
					lowest = dist
					lowestid = xact
				}
			}
			a := Allocation { rid:xres, aid:lowestid, dist:lowest}
			sd.allocation = append (sd.allocation, a)
			delete(sd.activity, lowestid)
		}
	}
}

func build(lines []string) SchemaData {
	sd := SchemaData {}
	sd.activity = map[string]Activity {}
	sd.resource = map[string]Resource {}
	for _, line := range lines {
		split := strings.Split(line, ",")
		lat, _ := strconv.ParseFloat(split[1], 64)
		lon, _ := strconv.ParseFloat(split[2], 64)
  		switch len(split) {
  		case 3:
  			r := Resource { id:split[0], lat:lat, lon:lon }
  			sd.resource[r.id] = r
  		case 4:
  			a := Activity { id:split[0], lat:lat, lon:lon }
  			sd.activity[a.id] = a
  		}
    }
    return sd
}

func main() {
	lines, _ := readLines("/Users/daryl/Development/Projects/FunctionalComparison/Data/DataSPIF.csv")
    for i := 0; i < 1000; i++ {
    	sd := build(lines)
	    scheduleResources(&sd)
		sum := 0.0
		for _, alloc := range sd.allocation {
			sum += alloc.dist
		}
		fmt.Println(sum)	
	}
}
