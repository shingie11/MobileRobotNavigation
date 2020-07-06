;; Auto-generated. Do not edit!


(when (boundp 'wa_two::Model)
  (if (not (find-package "WA_TWO"))
    (make-package "WA_TWO"))
  (shadow 'Model (find-package "WA_TWO")))
(unless (find-package "WA_TWO::MODEL")
  (make-package "WA_TWO::MODEL"))

(in-package "ROS")
;;//! \htmlinclude Model.msg.html


(defclass wa_two::Model
  :super ros::object
  :slots (_info_vector _info_matrix _at _bt _ct _rt _qt ))

(defmethod wa_two::Model
  (:init
   (&key
    ((:info_vector __info_vector) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:info_matrix __info_matrix) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:at __at) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:bt __bt) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ct __ct) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rt __rt) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:qt __qt) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _info_vector __info_vector)
   (setq _info_matrix __info_matrix)
   (setq _at __at)
   (setq _bt __bt)
   (setq _ct __ct)
   (setq _rt __rt)
   (setq _qt __qt)
   self)
  (:info_vector
   (&optional __info_vector)
   (if __info_vector (setq _info_vector __info_vector)) _info_vector)
  (:info_matrix
   (&optional __info_matrix)
   (if __info_matrix (setq _info_matrix __info_matrix)) _info_matrix)
  (:at
   (&optional __at)
   (if __at (setq _at __at)) _at)
  (:bt
   (&optional __bt)
   (if __bt (setq _bt __bt)) _bt)
  (:ct
   (&optional __ct)
   (if __ct (setq _ct __ct)) _ct)
  (:rt
   (&optional __rt)
   (if __rt (setq _rt __rt)) _rt)
  (:qt
   (&optional __qt)
   (if __qt (setq _qt __qt)) _qt)
  (:serialization-length
   ()
   (+
    ;; float64[] _info_vector
    (* 8    (length _info_vector)) 4
    ;; float64[] _info_matrix
    (* 8    (length _info_matrix)) 4
    ;; float64[] _at
    (* 8    (length _at)) 4
    ;; float64[] _bt
    (* 8    (length _bt)) 4
    ;; float64[] _ct
    (* 8    (length _ct)) 4
    ;; float64[] _rt
    (* 8    (length _rt)) 4
    ;; float64[] _qt
    (* 8    (length _qt)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _info_vector
     (write-long (length _info_vector) s)
     (dotimes (i (length _info_vector))
       (sys::poke (elt _info_vector i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _info_matrix
     (write-long (length _info_matrix) s)
     (dotimes (i (length _info_matrix))
       (sys::poke (elt _info_matrix i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _at
     (write-long (length _at) s)
     (dotimes (i (length _at))
       (sys::poke (elt _at i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _bt
     (write-long (length _bt) s)
     (dotimes (i (length _bt))
       (sys::poke (elt _bt i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _ct
     (write-long (length _ct) s)
     (dotimes (i (length _ct))
       (sys::poke (elt _ct i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _rt
     (write-long (length _rt) s)
     (dotimes (i (length _rt))
       (sys::poke (elt _rt i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _qt
     (write-long (length _qt) s)
     (dotimes (i (length _qt))
       (sys::poke (elt _qt i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _info_vector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _info_vector (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _info_vector i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _info_matrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _info_matrix (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _info_matrix i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _at
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _at (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _at i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _bt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bt (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _bt i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _ct
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ct (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ct i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _rt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rt (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rt i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _qt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _qt (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _qt i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get wa_two::Model :md5sum-) "76a16224f9e634d471ba03018232a454")
(setf (get wa_two::Model :datatype-) "wa_two/Model")
(setf (get wa_two::Model :definition-)
      "float64[] info_vector 
float64[] info_matrix
float64[] at 
float64[] bt 
float64[] ct 
float64[] rt
float64[] qt


")



(provide :wa_two/Model "76a16224f9e634d471ba03018232a454")


