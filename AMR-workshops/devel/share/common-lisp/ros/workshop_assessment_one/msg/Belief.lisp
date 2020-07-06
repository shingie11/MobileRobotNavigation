; Auto-generated. Do not edit!


(cl:in-package workshop_assessment_one-msg)


;//! \htmlinclude Belief.msg.html

(cl:defclass <Belief> (roslisp-msg-protocol:ros-message)
  ((belC
    :reader belC
    :initarg :belC
    :type cl:float
    :initform 0.0)
   (belD
    :reader belD
    :initarg :belD
    :type cl:float
    :initform 0.0))
)

(cl:defclass Belief (<Belief>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Belief>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Belief)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name workshop_assessment_one-msg:<Belief> is deprecated: use workshop_assessment_one-msg:Belief instead.")))

(cl:ensure-generic-function 'belC-val :lambda-list '(m))
(cl:defmethod belC-val ((m <Belief>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:belC-val is deprecated.  Use workshop_assessment_one-msg:belC instead.")
  (belC m))

(cl:ensure-generic-function 'belD-val :lambda-list '(m))
(cl:defmethod belD-val ((m <Belief>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader workshop_assessment_one-msg:belD-val is deprecated.  Use workshop_assessment_one-msg:belD instead.")
  (belD m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Belief>) ostream)
  "Serializes a message object of type '<Belief>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'belC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'belD))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Belief>) istream)
  "Deserializes a message object of type '<Belief>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'belC) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'belD) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Belief>)))
  "Returns string type for a message object of type '<Belief>"
  "workshop_assessment_one/Belief")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Belief)))
  "Returns string type for a message object of type 'Belief"
  "workshop_assessment_one/Belief")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Belief>)))
  "Returns md5sum for a message object of type '<Belief>"
  "ca75e765894e00cc9a3762a260dd77d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Belief)))
  "Returns md5sum for a message object of type 'Belief"
  "ca75e765894e00cc9a3762a260dd77d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Belief>)))
  "Returns full string definition for message of type '<Belief>"
  (cl:format cl:nil "float32 belC~%float32 belD~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Belief)))
  "Returns full string definition for message of type 'Belief"
  (cl:format cl:nil "float32 belC~%float32 belD~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Belief>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Belief>))
  "Converts a ROS message object to a list"
  (cl:list 'Belief
    (cl:cons ':belC (belC msg))
    (cl:cons ':belD (belD msg))
))
