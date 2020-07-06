;; Auto-generated. Do not edit!


(when (boundp 'workshop_assessment_one::Belief)
  (if (not (find-package "WORKSHOP_ASSESSMENT_ONE"))
    (make-package "WORKSHOP_ASSESSMENT_ONE"))
  (shadow 'Belief (find-package "WORKSHOP_ASSESSMENT_ONE")))
(unless (find-package "WORKSHOP_ASSESSMENT_ONE::BELIEF")
  (make-package "WORKSHOP_ASSESSMENT_ONE::BELIEF"))

(in-package "ROS")
;;//! \htmlinclude Belief.msg.html


(defclass workshop_assessment_one::Belief
  :super ros::object
  :slots (_belC _belD ))

(defmethod workshop_assessment_one::Belief
  (:init
   (&key
    ((:belC __belC) 0.0)
    ((:belD __belD) 0.0)
    )
   (send-super :init)
   (setq _belC (float __belC))
   (setq _belD (float __belD))
   self)
  (:belC
   (&optional __belC)
   (if __belC (setq _belC __belC)) _belC)
  (:belD
   (&optional __belD)
   (if __belD (setq _belD __belD)) _belD)
  (:serialization-length
   ()
   (+
    ;; float32 _belC
    4
    ;; float32 _belD
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _belC
       (sys::poke _belC (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _belD
       (sys::poke _belD (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _belC
     (setq _belC (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _belD
     (setq _belD (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get workshop_assessment_one::Belief :md5sum-) "ca75e765894e00cc9a3762a260dd77d0")
(setf (get workshop_assessment_one::Belief :datatype-) "workshop_assessment_one/Belief")
(setf (get workshop_assessment_one::Belief :definition-)
      "float32 belC
float32 belD

")



(provide :workshop_assessment_one/Belief "ca75e765894e00cc9a3762a260dd77d0")


