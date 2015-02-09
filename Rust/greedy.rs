// rustc -C opt-level=3 -C target-cpu=core2

use std::collections::HashMap;
use std::collections::HashSet;
use std::io::fs::File;
use std::str::FromStr;
use std::f64;
use std::f64::consts::PI;
use std::num::Float;

static EARTH_RADIUS_M:f64 = 6367450.0;
static CONVERT_RAD:f64 = PI / 180.0;

#[derive(Clone)]
struct Activity {
    id: String,
    lat: f64,
    lon: f64,
}

impl Activity {
    fn new(id: &String, lat: f64, lon: f64) -> Activity {
        Activity { id: id.clone(), lat: lat, lon: lon }
    }
}

#[derive(Clone)]
struct Resource {
    id: String,
    lat: f64,
    lon: f64,
}

impl Resource {
    pub fn new(id: &String, lat: f64, lon: f64) -> Resource {
        Resource { id: id.clone(), lat: lat, lon: lon }
    }
}

#[derive(Clone)]
struct Allocation {
    rid: String,
    aid: String,
    dist: f64,
}

impl Allocation {
    pub fn new(rid: &String, aid: &String, dist: f64) -> Allocation {
        Allocation { rid: rid.clone(), aid: aid.clone(), dist: dist }
    }
}

#[derive(Clone)]
struct SchemaData {
    activity: HashMap<String,Activity>,
    resource: Vec<Resource>,
}

impl SchemaData {
    pub fn new() -> SchemaData {
        SchemaData { 
            activity: HashMap::new(), 
            resource: Vec::new()
        }
    }
}

fn build(lines: Vec<&str>) -> SchemaData {
    let mut sd = SchemaData::new();
    for x in lines.iter() {
        let split = x.split_str(",").collect::<Vec<&str>>();
        let id:&str = split[0];
        let lat: f64 = FromStr::from_str(split[1]).unwrap();
        let lng: f64 = FromStr::from_str(split[2]).unwrap();
        if split.len() == 3 {
            sd.resource.push(Resource::new(&String::from_str(id), lat, lng));
        } else if split.len() == 4 {
            sd.activity.insert(String::from_str(id), Activity::new(&String::from_str(id), lat, lng));
        }
    }
    sd
}

fn distance_between_points(lat1:f64, lon1:f64, lat2:f64, lon2:f64) -> f64 {
    let start_lat_in_rad: f64 = lat1 * CONVERT_RAD;
    let start_lon_in_rad: f64 = lon1 * CONVERT_RAD;
    let end_lat_in_rad: f64 = lat2 * CONVERT_RAD;
    let end_lon_in_rad: f64 = lon2 * CONVERT_RAD;
    let longitude: f64 = end_lon_in_rad - start_lon_in_rad;
    let latitude: f64 = end_lat_in_rad - start_lat_in_rad;
    let sin_half_lat: f64 = Float::sin(latitude * 0.5);
    let sin_half_lon: f64 = Float::sin(longitude * 0.5);
    let a: f64 = sin_half_lat * sin_half_lat + Float::cos(start_lat_in_rad) * Float::cos(end_lat_in_rad) * sin_half_lon * sin_half_lon;
    let c: f64 = Float::atan2(Float::sqrt(a), Float::sqrt(1.0 - a));
    EARTH_RADIUS_M * (c + c)
}

fn schedule_resources(sd: &SchemaData) -> f64 {
    let mut allocation: Vec<Allocation> = Vec::new();
    let mut activity_hash: HashSet<String> = HashSet::new();
    for res in sd.resource.iter() {
        for c in 0..50 {
            let mut lowest: f64 = f64::INFINITY;
            let mut lowest_id = &String::new();
            for (act_key, act) in sd.activity.iter() {
                if (!activity_hash.contains(act_key)) {
                    let dist = distance_between_points(res.lat, res.lon, act.lat, act.lon); 
                    if dist < lowest {
                        lowest = dist;
                        lowest_id = act_key;
                    }
                }
            }
            let a = Allocation::new(&res.id, lowest_id, lowest);
            allocation.push(a);
            activity_hash.insert(lowest_id.clone());
        }
    }

    // Sum it
    let mut sum: f64 = 0.0;
    for all in allocation.iter() {
        sum += all.dist;
    }
    sum
}

fn main() {
    // Load lines
    let mut file = File::open(&Path::new("/Users/daryl/Development/Projects/FunctionalComparison/Data/DataSPIF.csv"));
    let contents = file.read_to_end().unwrap();
    let filestr = String::from_utf8(contents).unwrap();
    let lines: Vec<&str> = filestr.lines().collect();

    // Build
    let sd = build(lines);

    // Schedule
    for i in 0..100 {
        let sum = schedule_resources(&sd);
        println!("{}: {}", i, sum);
    }
}