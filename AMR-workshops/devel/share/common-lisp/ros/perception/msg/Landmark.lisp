; Auto-generated. Do not edit!


(cl:in-package perception-msg)


;//! \htmlinclude Landmark.msg.html

(cl:defclass <Landmark> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (signature
    :reader signature
    :initarg :signature
    :type cl:integer
    :initform 0))
)

(cl:defclass Landmark (<Landmark>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Landmark>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Landmark)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception-msg:<Landmark> is deprecated: use perception-msg:Landmark instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <Landmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception-msg:pos-val is deprecated.  Use perception-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'signature-val :lambda-list '(m))
(cl:defmethod signature-val ((m <Landmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception-msg:signature-val is deprecated.  Use perception-msg:signature instead.")
  (signature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Landmark>) ostream)
  "Serializes a message object of type '<Landmark>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
  (cl:let* ((signed (cl:slot-value msg 'signature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Landmark>) istream)
  "Deserializes a message object of type '<Landmark>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signature) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Landmark>)))
  "Returns string type for a message object of type '<Landmark>"
  "perception/Landmark")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Landmark)))
  "Returns string type for a message object of type 'Landmark"
  "perception/Landmark")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Landmark>)))
  "Returns md5sum for a message object of type '<Landmark>"
  "0e6d3e1d7cb152c50ed2022872aedb5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Landmark)))
  "Returns md5sum for a message object of type 'Landmark"
  "0e6d3e1d7cb152c50ed2022872aedb5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Landmark>)))
  "Returns full string definition for message of type '<Landmark>"
  (cl:format cl:nil "geometry_msgs/Point pos~%int32 signature~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Landmark)))
  "Returns full string definition for message of type 'Landmark"
  (cl:format cl:nil "geometry_msgs/Point pos~%int32 signature~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Landmark>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Landmark>))
  "Converts a ROS message object to a list"
  (cl:list 'Landmark
    (cl:cons ':pos (pos msg))
    (cl:cons ':signature (signature msg))
))
