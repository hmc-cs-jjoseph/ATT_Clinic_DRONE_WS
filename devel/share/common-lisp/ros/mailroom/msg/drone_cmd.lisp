; Auto-generated. Do not edit!


(cl:in-package mailroom-msg)


;//! \htmlinclude drone_cmd.msg.html

(cl:defclass <drone_cmd> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0)
   (heights
    :reader heights
    :initarg :heights
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (channels
    :reader channels
    :initarg :channels
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass drone_cmd (<drone_cmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drone_cmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drone_cmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mailroom-msg:<drone_cmd> is deprecated: use mailroom-msg:drone_cmd instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <drone_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:data-val is deprecated.  Use mailroom-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'heights-val :lambda-list '(m))
(cl:defmethod heights-val ((m <drone_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:heights-val is deprecated.  Use mailroom-msg:heights instead.")
  (heights m))

(cl:ensure-generic-function 'channels-val :lambda-list '(m))
(cl:defmethod channels-val ((m <drone_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:channels-val is deprecated.  Use mailroom-msg:channels instead.")
  (channels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drone_cmd>) ostream)
  "Serializes a message object of type '<drone_cmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'heights))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'heights))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'channels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'channels))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drone_cmd>) istream)
  "Deserializes a message object of type '<drone_cmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'heights) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'heights)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'channels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'channels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drone_cmd>)))
  "Returns string type for a message object of type '<drone_cmd>"
  "mailroom/drone_cmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drone_cmd)))
  "Returns string type for a message object of type 'drone_cmd"
  "mailroom/drone_cmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drone_cmd>)))
  "Returns md5sum for a message object of type '<drone_cmd>"
  "356e76f7e1df41ac5081a94634ddddce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drone_cmd)))
  "Returns md5sum for a message object of type 'drone_cmd"
  "356e76f7e1df41ac5081a94634ddddce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drone_cmd>)))
  "Returns full string definition for message of type '<drone_cmd>"
  (cl:format cl:nil "uint32 data~%uint32[] heights~%uint32[] channels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drone_cmd)))
  "Returns full string definition for message of type 'drone_cmd"
  (cl:format cl:nil "uint32 data~%uint32[] heights~%uint32[] channels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drone_cmd>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'heights) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'channels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drone_cmd>))
  "Converts a ROS message object to a list"
  (cl:list 'drone_cmd
    (cl:cons ':data (data msg))
    (cl:cons ':heights (heights msg))
    (cl:cons ':channels (channels msg))
))
