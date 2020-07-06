;; Auto-generated. Do not edit!


(when (boundp 'perception::Observations)
  (if (not (find-package "PERCEPTION"))
    (make-package "PERCEPTION"))
  (shadow 'Observations (find-package "PERCEPTION")))
(unless (find-package "PERCEPTION::OBSERVATIONS")
  (make-package "PERCEPTION::OBSERVATIONS"))

(in-package "ROS")
;;//! \htmlinclude Observations.msg.html


(defclass perception::Observations
  :super ros::object
  :slots (_observations ))

(defmethod perception::Observations
  (:init
   (&key
    ((:observations __observations) (let (r) (dotimes (i 0) (push (instance perception::Observation :init) r)) r))
    )
   (send-super :init)
   (setq _observations __observations)
   self)
  (:observations
   (&rest __observations)
   (if (keywordp (car __observations))
       (send* _observations __observations)
     (progn
       (if __observations (setq _observations (car __observations)))
       _observations)))
  (:serialization-length
   ()
   (+
    ;; perception/Observation[] _observations
    (apply #'+ (send-all _observations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception/Observation[] _observations
     (write-long (length _observations) s)
     (dolist (elem _observations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception/Observation[] _observations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _observations (let (r) (dotimes (i n) (push (instance perception::Observation :init) r)) r))
     (dolist (elem- _observations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception::Observations :md5sum-) "83718f2217d5edf089e92c5bcad51532")
(setf (get perception::Observations :datatype-) "perception/Observations")
(setf (get perception::Observations :definition-)
      "Observation[] observations

================================================================================
MSG: perception/Observation
float32 range
float32 bearing
float32 signature

")



(provide :perception/Observations "83718f2217d5edf089e92c5bcad51532")


