;; Auto-generated. Do not edit!


(when (boundp 'workshop_assessment_one::Update)
  (if (not (find-package "WORKSHOP_ASSESSMENT_ONE"))
    (make-package "WORKSHOP_ASSESSMENT_ONE"))
  (shadow 'Update (find-package "WORKSHOP_ASSESSMENT_ONE")))
(unless (find-package "WORKSHOP_ASSESSMENT_ONE::UPDATE")
  (make-package "WORKSHOP_ASSESSMENT_ONE::UPDATE"))

(in-package "ROS")
;;//! \htmlinclude Update.msg.html


(defclass workshop_assessment_one::Update
  :super ros::object
  :slots (_input _m _pbelC _pbelD _pAC _pAD _pBC _pBD _pCEC _pDEC _pCED _pDED _pCFC _pDFC _pCFD _pDFD ))

(defmethod workshop_assessment_one::Update
  (:init
   (&key
    ((:input __input) 0)
    ((:m __m) 0)
    ((:pbelC __pbelC) 0.0)
    ((:pbelD __pbelD) 0.0)
    ((:pAC __pAC) 0.0)
    ((:pAD __pAD) 0.0)
    ((:pBC __pBC) 0.0)
    ((:pBD __pBD) 0.0)
    ((:pCEC __pCEC) 0.0)
    ((:pDEC __pDEC) 0.0)
    ((:pCED __pCED) 0.0)
    ((:pDED __pDED) 0.0)
    ((:pCFC __pCFC) 0.0)
    ((:pDFC __pDFC) 0.0)
    ((:pCFD __pCFD) 0.0)
    ((:pDFD __pDFD) 0.0)
    )
   (send-super :init)
   (setq _input (round __input))
   (setq _m (round __m))
   (setq _pbelC (float __pbelC))
   (setq _pbelD (float __pbelD))
   (setq _pAC (float __pAC))
   (setq _pAD (float __pAD))
   (setq _pBC (float __pBC))
   (setq _pBD (float __pBD))
   (setq _pCEC (float __pCEC))
   (setq _pDEC (float __pDEC))
   (setq _pCED (float __pCED))
   (setq _pDED (float __pDED))
   (setq _pCFC (float __pCFC))
   (setq _pDFC (float __pDFC))
   (setq _pCFD (float __pCFD))
   (setq _pDFD (float __pDFD))
   self)
  (:input
   (&optional __input)
   (if __input (setq _input __input)) _input)
  (:m
   (&optional __m)
   (if __m (setq _m __m)) _m)
  (:pbelC
   (&optional __pbelC)
   (if __pbelC (setq _pbelC __pbelC)) _pbelC)
  (:pbelD
   (&optional __pbelD)
   (if __pbelD (setq _pbelD __pbelD)) _pbelD)
  (:pAC
   (&optional __pAC)
   (if __pAC (setq _pAC __pAC)) _pAC)
  (:pAD
   (&optional __pAD)
   (if __pAD (setq _pAD __pAD)) _pAD)
  (:pBC
   (&optional __pBC)
   (if __pBC (setq _pBC __pBC)) _pBC)
  (:pBD
   (&optional __pBD)
   (if __pBD (setq _pBD __pBD)) _pBD)
  (:pCEC
   (&optional __pCEC)
   (if __pCEC (setq _pCEC __pCEC)) _pCEC)
  (:pDEC
   (&optional __pDEC)
   (if __pDEC (setq _pDEC __pDEC)) _pDEC)
  (:pCED
   (&optional __pCED)
   (if __pCED (setq _pCED __pCED)) _pCED)
  (:pDED
   (&optional __pDED)
   (if __pDED (setq _pDED __pDED)) _pDED)
  (:pCFC
   (&optional __pCFC)
   (if __pCFC (setq _pCFC __pCFC)) _pCFC)
  (:pDFC
   (&optional __pDFC)
   (if __pDFC (setq _pDFC __pDFC)) _pDFC)
  (:pCFD
   (&optional __pCFD)
   (if __pCFD (setq _pCFD __pCFD)) _pCFD)
  (:pDFD
   (&optional __pDFD)
   (if __pDFD (setq _pDFD __pDFD)) _pDFD)
  (:serialization-length
   ()
   (+
    ;; char _input
    1
    ;; char _m
    1
    ;; float32 _pbelC
    4
    ;; float32 _pbelD
    4
    ;; float32 _pAC
    4
    ;; float32 _pAD
    4
    ;; float32 _pBC
    4
    ;; float32 _pBD
    4
    ;; float32 _pCEC
    4
    ;; float32 _pDEC
    4
    ;; float32 _pCED
    4
    ;; float32 _pDED
    4
    ;; float32 _pCFC
    4
    ;; float32 _pDFC
    4
    ;; float32 _pCFD
    4
    ;; float32 _pDFD
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; char _input
       (write-byte _input s)
     ;; char _m
       (write-byte _m s)
     ;; float32 _pbelC
       (sys::poke _pbelC (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pbelD
       (sys::poke _pbelD (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pAC
       (sys::poke _pAC (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pAD
       (sys::poke _pAD (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pBC
       (sys::poke _pBC (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pBD
       (sys::poke _pBD (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pCEC
       (sys::poke _pCEC (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pDEC
       (sys::poke _pDEC (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pCED
       (sys::poke _pCED (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pDED
       (sys::poke _pDED (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pCFC
       (sys::poke _pCFC (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pDFC
       (sys::poke _pDFC (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pCFD
       (sys::poke _pCFD (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pDFD
       (sys::poke _pDFD (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; char _input
     (setq _input (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; char _m
     (setq _m (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _pbelC
     (setq _pbelC (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pbelD
     (setq _pbelD (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pAC
     (setq _pAC (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pAD
     (setq _pAD (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pBC
     (setq _pBC (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pBD
     (setq _pBD (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pCEC
     (setq _pCEC (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pDEC
     (setq _pDEC (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pCED
     (setq _pCED (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pDED
     (setq _pDED (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pCFC
     (setq _pCFC (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pDFC
     (setq _pDFC (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pCFD
     (setq _pCFD (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pDFD
     (setq _pDFD (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get workshop_assessment_one::Update :md5sum-) "173bd9d26460de84cdbc682effdcf48f")
(setf (get workshop_assessment_one::Update :datatype-) "workshop_assessment_one/Update")
(setf (get workshop_assessment_one::Update :definition-)
      "char input
char m
float32 pbelC 
float32 pbelD 
float32 pAC 
float32 pAD 
float32 pBC 
float32 pBD 
float32 pCEC
float32 pDEC
float32 pCED
float32 pDED
float32 pCFC
float32 pDFC
float32 pCFD
float32 pDFD

 

")



(provide :workshop_assessment_one/Update "173bd9d26460de84cdbc682effdcf48f")


