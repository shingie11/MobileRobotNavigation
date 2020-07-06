;; Auto-generated. Do not edit!


(when (boundp 'interprocess_communication::Update)
  (if (not (find-package "INTERPROCESS_COMMUNICATION"))
    (make-package "INTERPROCESS_COMMUNICATION"))
  (shadow 'Update (find-package "INTERPROCESS_COMMUNICATION")))
(unless (find-package "INTERPROCESS_COMMUNICATION::UPDATE")
  (make-package "INTERPROCESS_COMMUNICATION::UPDATE"))

(in-package "ROS")
;;//! \htmlinclude Update.msg.html


(defclass interprocess_communication::Update
  :super ros::object
  :slots (_id _x _y _z ))

(defmethod interprocess_communication::Update
  (:init
   (&key
    ((:id __id) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get interprocess_communication::Update :md5sum-) "f75c2c3acce4fa081cf281adab7dcc44")
(setf (get interprocess_communication::Update :datatype-) "interprocess_communication/Update")
(setf (get interprocess_communication::Update :definition-)
      "string id
float32 x
float32 y
float32 z


")



(provide :interprocess_communication/Update "f75c2c3acce4fa081cf281adab7dcc44")


