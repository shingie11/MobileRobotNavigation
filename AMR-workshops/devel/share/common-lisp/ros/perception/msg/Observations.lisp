; Auto-generated. Do not edit!


(cl:in-package perception-msg)


;//! \htmlinclude Observations.msg.html

(cl:defclass <Observations> (roslisp-msg-protocol:ros-message)
  ((observations
    :reader observations
    :initarg :observations
    :type (cl:vector perception-msg:Observation)
   :initform (cl:make-array 0 :element-type 'perception-msg:Observation :initial-element (cl:make-instance 'perception-msg:Observation))))
)

(cl:defclass Observations (<Observations>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Observations>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Observations)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception-msg:<Observations> is deprecated: use perception-msg:Observations instead.")))

(cl:ensure-generic-function 'observations-val :lambda-list '(m))
(cl:defmethod observations-val ((m <Observations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception-msg:observations-val is deprecated.  Use perception-msg:observations instead.")
  (observations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Observations>) ostream)
  "Serializes a message object of type '<Observations>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'observations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'observations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Observations>) istream)
  "Deserializes a message object of type '<Observations>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'observations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'observations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception-msg:Observation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Observations>)))
  "Returns string type for a message object of type '<Observations>"
  "perception/Observations")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Observations)))
  "Returns string type for a message object of type 'Observations"
  "perception/Observations")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Observations>)))
  "Returns md5sum for a message object of type '<Observations>"
  "83718f2217d5edf089e92c5bcad51532")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Observations)))
  "Returns md5sum for a message object of type 'Observations"
  "83718f2217d5edf089e92c5bcad51532")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Observations>)))
  "Returns full string definition for message of type '<Observations>"
  (cl:format cl:nil "Observation[] observations~%~%================================================================================~%MSG: perception/Observation~%float32 range~%float32 bearing~%float32 signature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Observations)))
  "Returns full string definition for message of type 'Observations"
  (cl:format cl:nil "Observation[] observations~%~%================================================================================~%MSG: perception/Observation~%float32 range~%float32 bearing~%float32 signature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Observations>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'observations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Observations>))
  "Converts a ROS message object to a list"
  (cl:list 'Observations
    (cl:cons ':observations (observations msg))
))
