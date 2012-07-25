(ns PerformanceComparison.core
  (:gen-class)
  (:use [clojure.java.io]
        [clojure.contrib.generic.math-functions])
  (:require [clojure.string :as string]))

(set! *warn-on-reflection* true)
(set! *unchecked-math* true)

(defrecord Activity [#^String id ^double lat ^double lng])
(defrecord Resource [#^String id ^double lat ^double lng])
(defrecord Allocation [#^String resource-id #^String activity-id ^double distance])
(defrecord SchemaData [activities resources allocations])

(def ^:const earth-radius 6367450.0)
(def ^:const convert-to-rad (/ (. Math PI) 180.0))
(def ^:const convert-to-deg (/ 180.0 (. Math PI)))

(defn distance-between-points-lat-long ^double [^double lat1 ^double lon1 ^double lat2 ^double lon2]
  (let [dStartLatInRad ^double (* lat1 convert-to-rad)
        dStartLongInRad ^double (* lon1 convert-to-rad)
        dEndLatInRad ^double (* lat2 convert-to-rad)
        dEndLongInRad ^double (* lon2 convert-to-rad)
        dLongitude ^double (- dEndLongInRad dStartLongInRad)
        dLatitude ^double (- dEndLatInRad dStartLatInRad)
        dSinHalfLatitude ^double (sin (* dLatitude 0.5))
        dSinHalfLongitude ^double (sin (* dLongitude 0.5))
        a ^double (+ (* dSinHalfLatitude dSinHalfLatitude) (* (cos dStartLatInRad) (cos dEndLatInRad) dSinHalfLongitude dSinHalfLongitude))
        c ^double (atan2 (sqrt a) (sqrt (- 1.0 a)))]
    (* earth-radius (+ c c))))

(defn schedule [r c sd]
  (if (zero? c)
    (let [sdl (count (:resources sd))]
      (if (zero? sdl) 
        sd
        (do
          (recur (first (:resources sd)) 5 (update-in sd [:resources] rest)))))
    (do
      (let [aid-dist
        (first
          (sort-by second
            (map #(list (:id %) (distance-between-points-lat-long (:lat %) (:lng %) (:lat r) (:lng r)) ) (:activities sd))))]
        (let [allocation (Allocation. (:id r) (first aid-dist) (second aid-dist))
              activities (filter #(not= (:id %) (first aid-dist)) (:activities sd))
              allocations (conj (:allocations sd) allocation)
              sd (SchemaData. activities (:resources sd) allocations)]
          (recur r (dec c) sd))))))

(defn import-csv [csv]
  (loop [data csv sd (SchemaData. () () ())]
    (if-not (seq data)
      sd
      (do
        (let [f (first data) s (count f)]
          (let [sd-updated 
            (cond
              (= s 4) (let [a (Activity. (first f) (Double/parseDouble (second f)) (Double/parseDouble (nth f 2)))]
                        (update-in sd [:activities] conj a))
              (= s 3) (let [r (Resource. (first f) (Double/parseDouble (second f)) (Double/parseDouble (nth f 2)))]
                        (update-in sd [:resources] conj r)))]
            (recur (rest data) sd-updated)))))))

(defn -main []
  (with-open [rdr (reader "/Users/daryl/Source/SkylinedSoftware/Prototypes/PerformanceComparison/Data/DataSPIF.csv")]
    (let [csv (for [line (line-seq rdr)]
                (string/split line #","))]
      (let [sd (import-csv csv)]
        (loop [count 1000]
          (if (zero? count)
            0
            (let [s
              (schedule 
                (first (:resources sd))
                5
                (update-in sd [:resources] rest))
                alloc (map #(:distance %) (:allocations s))
                total (reduce + alloc)]
                (println total)
            (recur (dec count)))))))))

