; Auto-generated. Do not edit!


(cl:in-package perception-msg)


;//! \htmlinclude Landmarks.msg.html

(cl:defclass <Landmarks> (roslisp-msg-protocol:ros-message)
  ((landmarks
    :reader landmarks
    :initarg :landmarks
    :type (cl:vector perception-msg:Landmark)
   :initform (cl:make-array 0 :element-type 'perception-msg:Landmark :initial-element (cl:make-instance 'perception-msg:Landmark))))
)

(cl:defclass Landmarks (<Landmarks>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Landmarks>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Landmarks)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception-msg:<Landmarks> is deprecated: use perception-msg:Landmarks instead.")))

(cl:ensure-generic-function 'landmarks-val :lambda-list '(m))
(cl:defmethod landmarks-val ((m <Landmarks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception-msg:landmarks-val is deprecated.  Use perception-msg:landmarks instead.")
  (landmarks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Landmarks>) ostream)
  "Serializes a message object of type '<Landmarks>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmarks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'landmarks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Landmarks>) istream)
  "Deserializes a message object of type '<Landmarks>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmarks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmarks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception-msg:Landmark))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Landmarks>)))
  "Returns string type for a message object of type '<Landmarks>"
  "perception/Landmarks")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Landmarks)))
  "Returns string type for a message object of type 'Landmarks"
  "perception/Landmarks")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Landmarks>)))
  "Returns md5sum for a message object of type '<Landmarks>"
  "05a8c6fbb4d17bf98d97c22d108642e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Landmarks)))
  "Returns md5sum for a message object of type 'Landmarks"
  "05a8c6fbb4d17bf98d97c22d108642e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Landmarks>)))
  "Returns full string definition for message of type '<Landmarks>"
  (cl:format cl:nil "Landmark[] landmarks~%~%================================================================================~%MSG: perception/Landmark~%geometry_msgs/Point pos~%int32 signature~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Landmarks)))
  "Returns full string definition for message of type 'Landmarks"
  (cl:format cl:nil "Landmark[] landmarks~%~%================================================================================~%MSG: perception/Landmark~%geometry_msgs/Point pos~%int32 signature~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Landmarks>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmarks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Landmarks>))
  "Converts a ROS message object to a list"
  (cl:list 'Landmarks
    (cl:cons ':landmarks (landmarks msg))
))
