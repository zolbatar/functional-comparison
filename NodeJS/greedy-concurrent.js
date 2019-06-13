var fs = require('fs');

const earthRadiusM = 6367450;
const convert2Rad = Math.PI / 180.0;
const convert2Deg = 180.0 / Math.PI;
const seconds_per_metre = 0.0559234073;
function distanceBetweenPointsLatLong(lat1, lon1, lat2, lon2) {
  const dStartLatInRad = lat1 * convert2Rad;
  const dStartLongInRad = lon1 * convert2Rad;
  const dEndLatInRad = lat2 * convert2Rad;
  const dEndLongInRad = lon2 * convert2Rad;
  const dLongitude = dEndLongInRad - dStartLongInRad;
  const dLatitude = dEndLatInRad - dStartLatInRad;
  const dSinHalfLatitude = Math.sin(dLatitude * 0.5);
  const dSinHalfLongitude = Math.sin(dLongitude * 0.5);
  const a = dSinHalfLatitude * dSinHalfLatitude + Math.cos(dStartLatInRad) * Math.cos(dEndLatInRad) * dSinHalfLongitude * dSinHalfLongitude;
  const c = Math.atan2(Math.sqrt(a), Math.sqrt(1.0 - a));
  return earthRadiusM * (c + c);
}

function scheduleResources(sd) {
  for (r in sd.resource) {
    const res = sd.resource[r];
    for (let c = 0; c < 50; c++) {
      let lowest = Number.MAX_VALUE;
      let lowestid = '';
      sd.activity.forEach(act => {
        const dist = distanceBetweenPointsLatLong(res.lat, res.lon, act.lat, act.lon);
        if (dist < lowest) {
          lowest = dist;
          lowestid = act.id;
        }
      });
      let a = { resourceId: res.id, activityId: lowestid, distance: lowest };
      sd.allocation.push(a);
      sd.activity.delete(lowestid);
    }
  }
}

// Read in CSV
var contents = fs
  .readFileSync('../Data/DataSPIF.csv', 'utf8')
  .toString()
  .split('\n');
const sd = {
  activity: new Map(),
  resource: [],
  allocation: [],
};
for (i in contents) {
  const line = contents[i];
  const split = line.split(',');
  const lat = parseFloat(split[1]);
  const lon = parseFloat(split[2]);
  switch (split.length) {
    case 3:
      sd.resource.push({ id: split[0], lat, lon });
      break;
    case 4:
      sd.activity.set(split[0], { id: split[0], lat, lon });
      break;
  }
}

// Run schedule routine 100 times
async function go() {
  const m = Array.apply(null, { length: 1000 }).map(Number.call, Number);
  await Promise.all(
    m.map(async i => {
      const sdi = { activity: new Map(sd.activity), resource: sd.resource, allocation: [] };
      scheduleResources(sdi);
      let sum = 0;
      for (a in sdi.allocation) {
        sum += sdi.allocation[a].distance;
      }
      console.log(i + ' : ' + sum);
    }),
  );
}

go();
