; Auto-generated. Do not edit!


(cl:in-package wa_two-msg)


;//! \htmlinclude Belief.msg.html

(cl:defclass <Belief> (roslisp-msg-protocol:ros-message)
  ((info_vector
    :reader info_vector
    :initarg :info_vector
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (info_matrix
    :reader info_matrix
    :initarg :info_matrix
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Belief (<Belief>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Belief>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Belief)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wa_two-msg:<Belief> is deprecated: use wa_two-msg:Belief instead.")))

(cl:ensure-generic-function 'info_vector-val :lambda-list '(m))
(cl:defmethod info_vector-val ((m <Belief>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wa_two-msg:info_vector-val is deprecated.  Use wa_two-msg:info_vector instead.")
  (info_vector m))

(cl:ensure-generic-function 'info_matrix-val :lambda-list '(m))
(cl:defmethod info_matrix-val ((m <Belief>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wa_two-msg:info_matrix-val is deprecated.  Use wa_two-msg:info_matrix instead.")
  (info_matrix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Belief>) ostream)
  "Serializes a message object of type '<Belief>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'info_vector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'info_vector))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'info_matrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'info_matrix))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Belief>) istream)
  "Deserializes a message object of type '<Belief>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'info_vector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'info_vector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'info_matrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'info_matrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Belief>)))
  "Returns string type for a message object of type '<Belief>"
  "wa_two/Belief")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Belief)))
  "Returns string type for a message object of type 'Belief"
  "wa_two/Belief")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Belief>)))
  "Returns md5sum for a message object of type '<Belief>"
  "496b863397b7d14fe88da289c2e89a57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Belief)))
  "Returns md5sum for a message object of type 'Belief"
  "496b863397b7d14fe88da289c2e89a57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Belief>)))
  "Returns full string definition for message of type '<Belief>"
  (cl:format cl:nil "float64[] info_vector~%float64[] info_matrix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Belief)))
  "Returns full string definition for message of type 'Belief"
  (cl:format cl:nil "float64[] info_vector~%float64[] info_matrix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Belief>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'info_vector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'info_matrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Belief>))
  "Converts a ROS message object to a list"
  (cl:list 'Belief
    (cl:cons ':info_vector (info_vector msg))
    (cl:cons ':info_matrix (info_matrix msg))
))
