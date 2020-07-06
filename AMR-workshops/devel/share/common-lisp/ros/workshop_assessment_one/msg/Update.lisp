; Auto-generated. Do not edit!


(cl:in-package workshop_assessment_one-msg)


;//! \htmlinclude Update.msg.html

(cl:defclass <Update> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type cl:integer
    :initform 0)
   (m
    :reader m
    :initarg :m
    :type cl:integer
    :initform 0)
   (pbelC
    :reader pbelC
    :initarg :pbelC
    :type cl:float
    :initform 0.0)
   (pbelD
    :reader pbelD
    :initarg :pbelD
    :type cl:float
    :initform 0.0)
   (pAC
    :reader pAC
    :initarg :pAC
    :type cl:float
    :initform 0.0)
   (pAD
    :reader pAD
    :initarg :pAD
    :type cl:float
    :initform 0.0)
   (pBC
    :reader pBC
    :initarg :pBC
    :type cl:float
    :initform 0.0)
   (pBD
    :reader pBD
    :initarg :pBD
    :type cl:float
    :initform 0.0)
   (pCEC
    :reader pCEC
    :initarg :pCEC
    :type cl:float
    :initform 0.0)
   (pDEC
    :reader pDEC
    :initarg :pDEC
    :type cl:float
    :initform 0.0)
   (pCED
    :reader pCED
    :initarg :pCED
    :type cl:float
    :initform 0.0)
   (pDED
    :reader pDED
    :initarg :pDED
    :type cl:float
    :initform 0.0)
   (pCFC
    :reader pCFC
    :initarg :pCFC
    :type cl:float
    :initform 0.0)
   (pDFC
    :reader pDFC
    :initarg :pDFC
    :type cl:float
    :initform 0.0)
   (pCFD
    :reader pCFD
    :initarg :pCFD
    :type cl:float
    :initform 0.0)
   (pDFD
    :reader pDFD
    :initarg :pDFD
    :type cl:float
    :initform 0.0))
)

(cl:defclass Update (<Update>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Update>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Update)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name workshop_assessment_one-msg:<Update> is deprecated: use workshop_assessment_one-msg:Update instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:input-val is deprecated.  Use workshop_assessment_one-msg:input instead.")
  (input m))

(cl:ensure-generic-function 'm-val :lambda-list '(m))
(cl:defmethod m-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:m-val is deprecated.  Use workshop_assessment_one-msg:m instead.")
  (m m))

(cl:ensure-generic-function 'pbelC-val :lambda-list '(m))
(cl:defmethod pbelC-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:pbelC-val is deprecated.  Use workshop_assessment_one-msg:pbelC instead.")
  (pbelC m))

(cl:ensure-generic-function 'pbelD-val :lambda-list '(m))
(cl:defmethod pbelD-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:pbelD-val is deprecated.  Use workshop_assessment_one-msg:pbelD instead.")
  (pbelD m))

(cl:ensure-generic-function 'pAC-val :lambda-list '(m))
(cl:defmethod pAC-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:pAC-val is deprecated.  Use workshop_assessment_one-msg:pAC instead.")
  (pAC m))

(cl:ensure-generic-function 'pAD-val :lambda-list '(m))
(cl:defmethod pAD-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:pAD-val is deprecated.  Use workshop_assessment_one-msg:pAD instead.")
  (pAD m))

(cl:ensure-generic-function 'pBC-val :lambda-list '(m))
(cl:defmethod pBC-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:pBC-val is deprecated.  Use workshop_assessment_one-msg:pBC instead.")
  (pBC m))

(cl:ensure-generic-function 'pBD-val :lambda-list '(m))
(cl:defmethod pBD-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:pBD-val is deprecated.  Use workshop_assessment_one-msg:pBD instead.")
  (pBD m))

(cl:ensure-generic-function 'pCEC-val :lambda-list '(m))
(cl:defmethod pCEC-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:pCEC-val is deprecated.  Use workshop_assessment_one-msg:pCEC instead.")
  (pCEC m))

(cl:ensure-generic-function 'pDEC-val :lambda-list '(m))
(cl:defmethod pDEC-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:pDEC-val is deprecated.  Use workshop_assessment_one-msg:pDEC instead.")
  (pDEC m))

(cl:ensure-generic-function 'pCED-val :lambda-list '(m))
(cl:defmethod pCED-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:pCED-val is deprecated.  Use workshop_assessment_one-msg:pCED instead.")
  (pCED m))

(cl:ensure-generic-function 'pDED-val :lambda-list '(m))
(cl:defmethod pDED-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:pDED-val is deprecated.  Use workshop_assessment_one-msg:pDED instead.")
  (pDED m))

(cl:ensure-generic-function 'pCFC-val :lambda-list '(m))
(cl:defmethod pCFC-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:pCFC-val is deprecated.  Use workshop_assessment_one-msg:pCFC instead.")
  (pCFC m))

(cl:ensure-generic-function 'pDFC-val :lambda-list '(m))
(cl:defmethod pDFC-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:pDFC-val is deprecated.  Use workshop_assessment_one-msg:pDFC instead.")
  (pDFC m))

(cl:ensure-generic-function 'pCFD-val :lambda-list '(m))
(cl:defmethod pCFD-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:pCFD-val is deprecated.  Use workshop_assessment_one-msg:pCFD instead.")
  (pCFD m))

(cl:ensure-generic-function 'pDFD-val :lambda-list '(m))
(cl:defmethod pDFD-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:pDFD-val is deprecated.  Use workshop_assessment_one-msg:pDFD instead.")
  (pDFD m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Update>) ostream)
  "Serializes a message object of type '<Update>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'input)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'm)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pbelC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pbelD))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pAC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pAD))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pBC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pBD))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pCEC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pDEC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pCED))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pDED))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pCFC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pDFC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pCFD))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pDFD))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Update>) istream)
  "Deserializes a message object of type '<Update>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'input)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'm)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pbelC) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pbelD) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pAC) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pAD) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pBC) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pBD) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pCEC) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pDEC) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pCED) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pDED) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pCFC) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pDFC) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pCFD) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pDFD) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Update>)))
  "Returns string type for a message object of type '<Update>"
  "workshop_assessment_one/Update")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Update)))
  "Returns string type for a message object of type 'Update"
  "workshop_assessment_one/Update")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Update>)))
  "Returns md5sum for a message object of type '<Update>"
  "173bd9d26460de84cdbc682effdcf48f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Update)))
  "Returns md5sum for a message object of type 'Update"
  "173bd9d26460de84cdbc682effdcf48f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Update>)))
  "Returns full string definition for message of type '<Update>"
  (cl:format cl:nil "char input~%char m~%float32 pbelC ~%float32 pbelD ~%float32 pAC ~%float32 pAD ~%float32 pBC ~%float32 pBD ~%float32 pCEC~%float32 pDEC~%float32 pCED~%float32 pDED~%float32 pCFC~%float32 pDFC~%float32 pCFD~%float32 pDFD~%~% ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Update)))
  "Returns full string definition for message of type 'Update"
  (cl:format cl:nil "char input~%char m~%float32 pbelC ~%float32 pbelD ~%float32 pAC ~%float32 pAD ~%float32 pBC ~%float32 pBD ~%float32 pCEC~%float32 pDEC~%float32 pCED~%float32 pDED~%float32 pCFC~%float32 pDFC~%float32 pCFD~%float32 pDFD~%~% ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Update>))
  (cl:+ 0
     1
     1
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Update>))
  "Converts a ROS message object to a list"
  (cl:list 'Update
    (cl:cons ':input (input msg))
    (cl:cons ':m (m msg))
    (cl:cons ':pbelC (pbelC msg))
    (cl:cons ':pbelD (pbelD msg))
    (cl:cons ':pAC (pAC msg))
    (cl:cons ':pAD (pAD msg))
    (cl:cons ':pBC (pBC msg))
    (cl:cons ':pBD (pBD msg))
    (cl:cons ':pCEC (pCEC msg))
    (cl:cons ':pDEC (pDEC msg))
    (cl:cons ':pCED (pCED msg))
    (cl:cons ':pDED (pDED msg))
    (cl:cons ':pCFC (pCFC msg))
    (cl:cons ':pDFC (pDFC msg))
    (cl:cons ':pCFD (pCFD msg))
    (cl:cons ':pDFD (pDFD msg))
))
