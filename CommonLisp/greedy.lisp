;(load "quicklisp.lisp")
;(quicklisp-quickstart:install)

(load "~/quicklisp/setup.lisp")
(ql:quickload :cl-csv)
(ql:quickload :parse-float)
(ql:quickload :iterate)
(use-package :parse-float)
(use-package :iterate)

(defstruct resource id lat lng)
(defstruct activity id lat lng)

(defparameter resources-in '())
(defparameter activities-in '())
(defparameter resources '())
(defparameter activities '())
(defparameter allocations '())

(defconstant earth-radius 6367450.0)
(defconstant convert-to-rad (/ PI 180.0))
(defconstant convert-to-deg (/ 180.0 PI))

(defun distance-between-points-lat-long (lat1 lon1 lat2 lon2)
  (let* ((dStartLatInRad (* lat1 convert-to-rad))
        (dStartLongInRad (* lon1 convert-to-rad))
        (dEndLatInRad (* lat2 convert-to-rad))
        (dEndLongInRad (* lon2 convert-to-rad))
        (dLongitude (- dEndLongInRad dStartLongInRad))
        (dLatitude (- dEndLatInRad dStartLatInRad))
        (dSinHalfLatitude (sin (* dLatitude 0.5)))
        (dSinHalfLongitude (sin (* dLongitude 0.5)))
        (a (+ (* dSinHalfLatitude dSinHalfLatitude) (* (cos dStartLatInRad) (cos dEndLatInRad) dSinHalfLongitude dSinHalfLongitude)))
        (c (atan (sqrt a) (sqrt (- 1.0 a)))))
    (* earth-radius (+ c c))))

(defun distance-between-resource-activity (resource activity)
  (distance-between-points-lat-long (resource-lat resource) (resource-lng resource) (activity-lat activity) (activity-lng activity)))

(defun schedule-resource (resource)
  (iter (for i from 1 to 50)
    (let ((lowest 999999999) (lowest-id ""))
      (loop for activity in activities
        do (let ((dist (distance-between-resource-activity resource activity)))
          (when (< dist lowest)
            (setq lowest dist)
            (setq lowest-id (activity-id activity)))
        )
      )
      (setq allocations (push lowest allocations))
      (setq activities (remove-if #'(lambda (x) (string= (activity-id x) lowest-id)) activities)))))

(defun schedule ()
  (loop for resource in resources
    do (schedule-resource resource)))

(defun main ()
  (cl-csv:do-csv (row #P"../Data/DataSPIF.csv" )
    (let ((len (list-length row)))
      (if (= len 3)
        (setq resources-in (push (make-resource :id (nth 0 row) :lat (parse-float (nth 1 row)) :lng (parse-float (nth 2 row))) resources-in)))
      (if (= len 4)
        (setq activities-in (push (make-activity :id (nth 0 row) :lat (parse-float (nth 1 row)) :lng (parse-float (nth 2 row))) activities-in)))
    )
  )

  ; Reverse so go A
  (setq resources-in (reverse resources-in))
  (setq activities-in (reverse activities-in))

  ; This is the weirdest thing ever, it won't delete the first entry from the list without
  (setq activities (push (make-activity :id "DUMMY" :lat 500 :lng 500) activities))

  (iter (for i from 1 to 100)
    (setq allocations '())
    (setq resources (copy-list resources-in))
    (setq activities (copy-list activities-in))
    (schedule)
    (format t "~D: ~F~%" i (reduce #'+ allocations))))

(sb-ext:save-lisp-and-die "greedy.bin" :executable t :toplevel 'main) 