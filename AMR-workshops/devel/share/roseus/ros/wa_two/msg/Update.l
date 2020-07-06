;; Auto-generated. Do not edit!


(when (boundp 'wa_two::Update)
  (if (not (find-package "WA_TWO"))
    (make-package "WA_TWO"))
  (shadow 'Update (find-package "WA_TWO")))
(unless (find-package "WA_TWO::UPDATE")
  (make-package "WA_TWO::UPDATE"))

(in-package "ROS")
;;//! \htmlinclude Update.msg.html


(defclass wa_two::Update
  :super ros::object
  :slots (_ut _zt ))

(defmethod wa_two::Update
  (:init
   (&key
    ((:ut __ut) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:zt __zt) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _ut __ut)
   (setq _zt __zt)
   self)
  (:ut
   (&optional __ut)
   (if __ut (setq _ut __ut)) _ut)
  (:zt
   (&optional __zt)
   (if __zt (setq _zt __zt)) _zt)
  (:serialization-length
   ()
   (+
    ;; float64[] _ut
    (* 8    (length _ut)) 4
    ;; float64[] _zt
    (* 8    (length _zt)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _ut
     (write-long (length _ut) s)
     (dotimes (i (length _ut))
       (sys::poke (elt _ut i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _zt
     (write-long (length _zt) s)
     (dotimes (i (length _zt))
       (sys::poke (elt _zt i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _ut
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ut (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ut i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _zt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _zt (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _zt i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get wa_two::Update :md5sum-) "25d92018e2a28a0b8fa588e8c7cd9459")
(setf (get wa_two::Update :datatype-) "wa_two/Update")
(setf (get wa_two::Update :definition-)
      "float64[] ut
float64[] zt

")



(provide :wa_two/Update "25d92018e2a28a0b8fa588e8c7cd9459")


