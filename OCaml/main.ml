(* ocamlopt str.cmxa main.ml -o main *)

type activity = { aid: string; alat: float; alng: float }
type resource = { rid: string; rlat: float; rlng: float }
type allocation = { resourceId: string; activityId: string; distance: float }
type schemaData = { activity: activity list; resource: resource list; allocation: allocation list }

let rec loadCSV (lines: string array list) (sd: schemaData) =
    match lines with
    | [] -> sd
    | x::xs ->
        match Array.length x with
        | 3 ->
            loadCSV xs { sd with resource = { 
                rid = x.(0); 
                rlat = float_of_string x.(1); 
                rlng = float_of_string x.(2) } :: sd.resource }
        | 4 ->
            loadCSV xs { sd with activity = { 
                aid = x.(0); 
                alat = float_of_string x.(1); 
                alng = float_of_string x.(2) } :: sd.activity }
        | _ -> 
            print_endline "WTF?";
            loadCSV xs sd

let pi = 4.0 *. atan 1.0
let earthRadius = 6367450.0
let convert2Rad = pi /. 180.0
let convert2Deg = 180.0 /. pi

let distanceBetweenPointsLatLong (lat1: float) (lon1: float) (lat2: float) (lon2: float): float = 
    let dStartLatInRad = lat1 *. convert2Rad in
    let dStartLongInRad = lon1 *. convert2Rad in
    let dEndLatInRad = lat2 *. convert2Rad in
    let dEndLongInRad = lon2 *. convert2Rad in
    let dLongitude = dEndLongInRad -. dStartLongInRad in
    let dLatitude = dEndLatInRad -. dStartLatInRad in
    let dSinHalfLatitude = sin(dLatitude *. 0.5) in
    let dSinHalfLongitude = sin(dLongitude *. 0.5) in
    let a = dSinHalfLatitude *. dSinHalfLatitude +. cos(dStartLatInRad) *. cos(dEndLatInRad) *. dSinHalfLongitude *. dSinHalfLongitude in
    let c = atan2 (sqrt a) (sqrt(1.0 -. a)) in
    earthRadius *. (c +. c)

let comparing f x y = compare (f x) (f y)

let rec scheduleResource (r: resource) (c: int) (sd: schemaData) =
    if c = 0 then
        match List.length sd.resource with
        | 0 -> sd
        | _ -> scheduleResource (List.hd sd.resource) 5 { sd with resource = List.tl sd.resource }
    else
        let aid, dist = 
          List.hd 
          (List.sort (comparing snd)
          (List.map (fun x -> (x.aid, distanceBetweenPointsLatLong r.rlat r.rlng x.alat x.alng)) sd.activity) )in
        let activities = List.filter (fun x -> x.aid <> aid) sd.activity in
        scheduleResource r (c - 1) { sd with 
                activity = activities;
                allocation = { resourceId = r.rid; activityId = aid; distance = dist } :: sd.allocation }

let rec runMultiple (c: int) (sd: schemaData) =
    match c with
    | 0 -> ()
    | c ->
        let result = scheduleResource (List.hd sd.resource) 5 { sd with resource = List.tl sd.resource } in
        let distances = List.map (fun x -> x.distance) result.allocation in
        let total = List.fold_left (+.) 0.0 distances in
        print_endline (string_of_float total);
        runMultiple (c - 1) sd

let loadFile path =
    let lines = ref [] in
    let chan = open_in path in
    try
      while true; do
        lines := input_line chan :: !lines
      done; []
    with End_of_file ->
      close_in chan;
      List.rev !lines;;

let () = 
    let lines = loadFile "/Users/daryl/Source/SkylinedSoftware/Prototypes/PerformanceComparison/Data/DataSPIF.csv" in
    print_endline "Done";
    let linesSplit = List.map (fun x -> Array.of_list (Str.split (Str.regexp ",") x)) lines in
    let sd = loadCSV linesSplit { activity = []; resource = []; allocation = [] } in
    runMultiple 1000 sd
