;; Auto-generated. Do not edit!


(when (boundp 'perception::Landmarks)
  (if (not (find-package "PERCEPTION"))
    (make-package "PERCEPTION"))
  (shadow 'Landmarks (find-package "PERCEPTION")))
(unless (find-package "PERCEPTION::LANDMARKS")
  (make-package "PERCEPTION::LANDMARKS"))

(in-package "ROS")
;;//! \htmlinclude Landmarks.msg.html


(defclass perception::Landmarks
  :super ros::object
  :slots (_landmarks ))

(defmethod perception::Landmarks
  (:init
   (&key
    ((:landmarks __landmarks) (let (r) (dotimes (i 0) (push (instance perception::Landmark :init) r)) r))
    )
   (send-super :init)
   (setq _landmarks __landmarks)
   self)
  (:landmarks
   (&rest __landmarks)
   (if (keywordp (car __landmarks))
       (send* _landmarks __landmarks)
     (progn
       (if __landmarks (setq _landmarks (car __landmarks)))
       _landmarks)))
  (:serialization-length
   ()
   (+
    ;; perception/Landmark[] _landmarks
    (apply #'+ (send-all _landmarks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception/Landmark[] _landmarks
     (write-long (length _landmarks) s)
     (dolist (elem _landmarks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception/Landmark[] _landmarks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks (let (r) (dotimes (i n) (push (instance perception::Landmark :init) r)) r))
     (dolist (elem- _landmarks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception::Landmarks :md5sum-) "05a8c6fbb4d17bf98d97c22d108642e6")
(setf (get perception::Landmarks :datatype-) "perception/Landmarks")
(setf (get perception::Landmarks :definition-)
      "Landmark[] landmarks

================================================================================
MSG: perception/Landmark
geometry_msgs/Point pos
int32 signature

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :perception/Landmarks "05a8c6fbb4d17bf98d97c22d108642e6")


