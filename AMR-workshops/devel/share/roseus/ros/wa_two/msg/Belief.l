;; Auto-generated. Do not edit!


(when (boundp 'wa_two::Belief)
  (if (not (find-package "WA_TWO"))
    (make-package "WA_TWO"))
  (shadow 'Belief (find-package "WA_TWO")))
(unless (find-package "WA_TWO::BELIEF")
  (make-package "WA_TWO::BELIEF"))

(in-package "ROS")
;;//! \htmlinclude Belief.msg.html


(defclass wa_two::Belief
  :super ros::object
  :slots (_info_vector _info_matrix ))

(defmethod wa_two::Belief
  (:init
   (&key
    ((:info_vector __info_vector) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:info_matrix __info_matrix) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _info_vector __info_vector)
   (setq _info_matrix __info_matrix)
   self)
  (:info_vector
   (&optional __info_vector)
   (if __info_vector (setq _info_vector __info_vector)) _info_vector)
  (:info_matrix
   (&optional __info_matrix)
   (if __info_matrix (setq _info_matrix __info_matrix)) _info_matrix)
  (:serialization-length
   ()
   (+
    ;; float64[] _info_vector
    (* 8    (length _info_vector)) 4
    ;; float64[] _info_matrix
    (* 8    (length _info_matrix)) 4
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
   ;;
   self)
  )

(setf (get wa_two::Belief :md5sum-) "496b863397b7d14fe88da289c2e89a57")
(setf (get wa_two::Belief :datatype-) "wa_two/Belief")
(setf (get wa_two::Belief :definition-)
      "float64[] info_vector
float64[] info_matrix

")



(provide :wa_two/Belief "496b863397b7d14fe88da289c2e89a57")


