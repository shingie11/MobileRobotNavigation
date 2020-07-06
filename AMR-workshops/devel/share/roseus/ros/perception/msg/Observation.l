;; Auto-generated. Do not edit!


(when (boundp 'perception::Observation)
  (if (not (find-package "PERCEPTION"))
    (make-package "PERCEPTION"))
  (shadow 'Observation (find-package "PERCEPTION")))
(unless (find-package "PERCEPTION::OBSERVATION")
  (make-package "PERCEPTION::OBSERVATION"))

(in-package "ROS")
;;//! \htmlinclude Observation.msg.html


(defclass perception::Observation
  :super ros::object
  :slots (_range _bearing _signature ))

(defmethod perception::Observation
  (:init
   (&key
    ((:range __range) 0.0)
    ((:bearing __bearing) 0.0)
    ((:signature __signature) 0.0)
    )
   (send-super :init)
   (setq _range (float __range))
   (setq _bearing (float __bearing))
   (setq _signature (float __signature))
   self)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:bearing
   (&optional __bearing)
   (if __bearing (setq _bearing __bearing)) _bearing)
  (:signature
   (&optional __signature)
   (if __signature (setq _signature __signature)) _signature)
  (:serialization-length
   ()
   (+
    ;; float32 _range
    4
    ;; float32 _bearing
    4
    ;; float32 _signature
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _range
       (sys::poke _range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bearing
       (sys::poke _bearing (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _signature
       (sys::poke _signature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _range
     (setq _range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bearing
     (setq _bearing (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _signature
     (setq _signature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception::Observation :md5sum-) "072e563d2457492566310b362a4d08be")
(setf (get perception::Observation :datatype-) "perception/Observation")
(setf (get perception::Observation :definition-)
      "float32 range
float32 bearing
float32 signature

")



(provide :perception/Observation "072e563d2457492566310b362a4d08be")


