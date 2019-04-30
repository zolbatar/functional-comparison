;(load "quicklisp.lisp")
;(quicklisp-quickstart:install)

(load "~/quicklisp/setup.lisp")
(ql:quickload :cl-csv)
(ql:quickload :parse-float)
(use-package :parse-float)

(defstruct resource id lat lng)
(defstruct activity id lat lng)

(defparameter resources '())
(defparameter activities '())

(defun main ()
  (cl-csv:do-csv (row #P"../Data/DataSPIF.csv" )
    (let ((len (list-length row)))
      (if (= len 3)
        (setq resources (push (make-resource :id (nth 0 row) :lat (parse-float (nth 1 row)) :lng (parse-float (nth 2 row))) resources)))
      (if (= len 4)
        (setq activities (push (make-activity :id (nth 0 row) :lat (parse-float (nth 1 row)) :lng (parse-float (nth 2 row))) activities)))
    )
  )
  (print resources)
  (print activities)
)

(sb-ext:save-lisp-and-die "greedy.bin" :executable t :toplevel 'main) 