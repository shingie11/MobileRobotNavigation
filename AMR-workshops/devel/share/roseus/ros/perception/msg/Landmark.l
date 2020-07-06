;; Auto-generated. Do not edit!


(when (boundp 'perception::Landmark)
  (if (not (find-package "PERCEPTION"))
    (make-package "PERCEPTION"))
  (shadow 'Landmark (find-package "PERCEPTION")))
(unless (find-package "PERCEPTION::LANDMARK")
  (make-package "PERCEPTION::LANDMARK"))

(in-package "ROS")
;;//! \htmlinclude Landmark.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass perception::Landmark
  :super ros::object
  :slots (_pos _signature ))

(defmethod perception::Landmark
  (:init
   (&key
    ((:pos __pos) (instance geometry_msgs::Point :init))
    ((:signature __signature) 0)
    )
   (send-super :init)
   (setq _pos __pos)
   (setq _signature (round __signature))
   self)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:signature
   (&optional __signature)
   (if __signature (setq _signature __signature)) _signature)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _pos
    (send _pos :serialization-length)
    ;; int32 _signature
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _pos
       (send _pos :serialize s)
     ;; int32 _signature
       (write-long _signature s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; int32 _signature
     (setq _signature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception::Landmark :md5sum-) "0e6d3e1d7cb152c50ed2022872aedb5a")
(setf (get perception::Landmark :datatype-) "perception/Landmark")
(setf (get perception::Landmark :definition-)
      "geometry_msgs/Point pos
int32 signature

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :perception/Landmark "0e6d3e1d7cb152c50ed2022872aedb5a")


