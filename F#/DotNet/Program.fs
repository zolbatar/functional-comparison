namespace GreedyPerformance

open System
open System.IO

module Start =

    type Activity = { id: string; lat: float; lng: float }
    type Resource = { id: string; lat: float; lng: float }
    type Allocation = { resourceId: string; activityId: string; distance: float }
    type SchemaData = { activity: Activity list; mutable resource: Resource list; allocation: Allocation list }

    let earthRadius = 6367450.0 // geometric mean value gives about .1% error
    let convert2Rad = Math.PI / 180.0
    let convert2Deg = 180.0 / Math.PI
    let seconds_per_metre = 0.0559234073

    let internal distanceBetweenPointsLatLong (lat1: float) (lon1: float) (lat2: float) (lon2: float): float= 
        let dStartLatInRad = lat1 * convert2Rad
        let dStartLongInRad = lon1 * convert2Rad
        let dEndLatInRad = lat2 * convert2Rad
        let dEndLongInRad = lon2 * convert2Rad
        let dLongitude = dEndLongInRad - dStartLongInRad
        let dLatitude = dEndLatInRad - dStartLatInRad
        let dSinHalfLatitude = Math.Sin(dLatitude * 0.5)
        let dSinHalfLongitude = Math.Sin(dLongitude * 0.5)
        let a = dSinHalfLatitude * dSinHalfLatitude + Math.Cos(dStartLatInRad) * Math.Cos(dEndLatInRad) * dSinHalfLongitude * dSinHalfLongitude
        let c = Math.Atan2(Math.Sqrt(a), Math.Sqrt(1.0 - a))
        earthRadius * (c + c)

    let rec internal scheduleResource (r: Resource) (c: int) (sd: SchemaData) =
        match c with
        | 0 ->
            match sd.resource.Length with
            | 0 -> sd
            | _ -> scheduleResource sd.resource.Head 50 { sd with resource = sd.resource.Tail }
        | c ->
            let aid,dist = 
                sd.activity 
                |> List.map (fun x -> (x.id, distanceBetweenPointsLatLong r.lat r.lng x.lat x.lng))
                |> List.sortBy (fun (x,y) -> y)  
                |> List.head
            scheduleResource r (c - 1) { 
                sd 
                with 
                    activity = (sd.activity |> List.filter (fun x -> x.id <> aid)); 
                    allocation = { Allocation.resourceId = r.id; activityId = aid; distance = dist } :: sd.allocation
                }

    let rec internal loadCSV (lines: string[] list) (sd: SchemaData) =
        match lines with
        | [] -> sd
        | x::xs ->
            match x.Length with
            | 3 ->
                loadCSV xs { sd with resource = { Resource.id = x.[0]; lat = Convert.ToDouble(x.[1]); lng = Convert.ToDouble(x.[2]) } :: sd.resource }
            | 4 ->
                loadCSV xs { sd with activity = { Activity.id = x.[0]; lat = Convert.ToDouble(x.[1]); lng = Convert.ToDouble(x.[2]) } :: sd.activity }
            | _ -> 
                printfn "WTF?"
                loadCSV xs sd

    let readLines (filePath: string) = 
        System.IO.File.ReadAllLines(filePath)
        |> Array.map (fun x-> x.Split(','))
        |> Array.toList

    let rec private runMultiple (c: int) (tot: int) (sd: SchemaData) =
        match c with
        | 0 -> ()
        | c ->
            let result = scheduleResource sd.resource.Head 50 { sd with resource = sd.resource.Tail }
            let total = result.allocation |> List.map (fun x -> x.distance) |> List.fold (+) 0.0           
            printfn "%d: %f" (tot - c) total
            runMultiple (c - 1) tot sd

    [<EntryPoint>]
    let main args =
        let path = @"../../Data/DataSPIF.csv"
        let lines = readLines path
        let sd = loadCSV lines { activity = []; resource = []; allocation = [] }
        sd.resource <- List.rev sd.resource
        runMultiple 2500 2500 sd
        0
