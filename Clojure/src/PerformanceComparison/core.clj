(ns PerformanceComparison.core
  (:gen-class)
  (:use [clojure.java.io])
  (:require [clojure.string :as string]))

(set! *warn-on-reflection* true)
(set! *unchecked-math* true)

(defrecord Activity [#^String id ^double lat ^double lng])
(defrecord Resource [#^String id ^double lat ^double lng])
(defrecord Allocation [#^String resource-id #^String activity-id ^double distance])
(defrecord SchemaData [activities resources])

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
        dSinHalfLatitude ^double (Math/sin (* dLatitude 0.5))
        dSinHalfLongitude ^double (Math/sin (* dLongitude 0.5))
        a ^double (+ (* dSinHalfLatitude dSinHalfLatitude) (* (Math/cos dStartLatInRad) (Math/cos dEndLatInRad) dSinHalfLongitude dSinHalfLongitude))
        c ^double (Math/atan2 (Math/sqrt a) (Math/sqrt (- 1.0 a)))]
    (* earth-radius (+ c c))))

(defn schedule [r c activities resources allocations]
  (if (zero? c)
    (if (zero? (count resources)) 
      allocations
      (recur (first resources) 50 activities (rest resources) allocations))
    (do
      (let [aid-dist-unsorted (map #(list (:id %) (distance-between-points-lat-long (:lat %) (:lng %) (:lat r) (:lng r))) (vals activities))
            aid-dist (reduce #(if (< (second %1) (second %2)) %1 %2) aid-dist-unsorted)]
        (let [new-allocation (Allocation. (:id r) (first aid-dist) (second aid-dist))
              activities (dissoc activities (first aid-dist))
              allocations (conj allocations new-allocation)]
          (recur r (dec c) activities resources allocations))))))

(defn import-csv [csv]
  (loop [data csv sd (SchemaData. {} ())]
    (if-not (seq data)
;	  sd
	  (assoc sd :resources (reverse (:resources sd)))
      (do
        (let [f (first data) s (count f)]
          (let [sd-updated 
            (cond
              (= s 4) (let [a (Activity. (first f) (Double/parseDouble (second f)) (Double/parseDouble (nth f 2)))]
                        (update-in sd [:activities] assoc (first f) a))
              (= s 3) (let [r (Resource. (first f) (Double/parseDouble (second f)) (Double/parseDouble (nth f 2)))]
                        (update-in sd [:resources] conj r)))]
            (recur (rest data) sd-updated)))))))

(defn run []
  (with-open [rdr (reader "../Data/DataSPIF.csv")]
    (let [csv (for [line (line-seq rdr)]
                (string/split line #","))]
      (let [sd (import-csv csv)
            activities (:activities sd)
            resources (rest (:resources sd))]
        (loop [countloop 100]
          (if (zero? countloop)
            0
            (let [allocations []
                  alloc (map #(:distance %) (schedule (first (:resources sd)) 50 activities resources allocations))
                  total (reduce + alloc)]
              (println countloop ":" total)
            (recur (dec countloop)))))))))

(defn -main []
  (run))

