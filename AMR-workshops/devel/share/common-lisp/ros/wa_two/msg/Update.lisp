; Auto-generated. Do not edit!


(cl:in-package wa_two-msg)


;//! \htmlinclude Update.msg.html

(cl:defclass <Update> (roslisp-msg-protocol:ros-message)
  ((ut
    :reader ut
    :initarg :ut
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (zt
    :reader zt
    :initarg :zt
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Update (<Update>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Update>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Update)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wa_two-msg:<Update> is deprecated: use wa_two-msg:Update instead.")))

(cl:ensure-generic-function 'ut-val :lambda-list '(m))
(cl:defmethod ut-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wa_two-msg:ut-val is deprecated.  Use wa_two-msg:ut instead.")
  (ut m))

(cl:ensure-generic-function 'zt-val :lambda-list '(m))
(cl:defmethod zt-val ((m <Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wa_two-msg:zt-val is deprecated.  Use wa_two-msg:zt instead.")
  (zt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Update>) ostream)
  "Serializes a message object of type '<Update>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ut))))
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
   (cl:slot-value msg 'ut))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'zt))))
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
   (cl:slot-value msg 'zt))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Update>) istream)
  "Deserializes a message object of type '<Update>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ut) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ut)))
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
  (cl:setf (cl:slot-value msg 'zt) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'zt)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Update>)))
  "Returns string type for a message object of type '<Update>"
  "wa_two/Update")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Update)))
  "Returns string type for a message object of type 'Update"
  "wa_two/Update")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Update>)))
  "Returns md5sum for a message object of type '<Update>"
  "25d92018e2a28a0b8fa588e8c7cd9459")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Update)))
  "Returns md5sum for a message object of type 'Update"
  "25d92018e2a28a0b8fa588e8c7cd9459")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Update>)))
  "Returns full string definition for message of type '<Update>"
  (cl:format cl:nil "float64[] ut~%float64[] zt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Update)))
  "Returns full string definition for message of type 'Update"
  (cl:format cl:nil "float64[] ut~%float64[] zt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Update>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ut) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'zt) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Update>))
  "Converts a ROS message object to a list"
  (cl:list 'Update
    (cl:cons ':ut (ut msg))
    (cl:cons ':zt (zt msg))
))
