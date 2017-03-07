; Auto-generated. Do not edit!


(cl:in-package mailroom-msg)


;//! \htmlinclude drone_move.msg.html

(cl:defclass <drone_move> (roslisp-msg-protocol:ros-message)
  ((local_x
    :reader local_x
    :initarg :local_x
    :type cl:float
    :initform 0.0)
   (local_y
    :reader local_y
    :initarg :local_y
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (az_angle
    :reader az_angle
    :initarg :az_angle
    :type cl:integer
    :initform 0)
   (channels
    :reader channels
    :initarg :channels
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass drone_move (<drone_move>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drone_move>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drone_move)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mailroom-msg:<drone_move> is deprecated: use mailroom-msg:drone_move instead.")))

(cl:ensure-generic-function 'local_x-val :lambda-list '(m))
(cl:defmethod local_x-val ((m <drone_move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:local_x-val is deprecated.  Use mailroom-msg:local_x instead.")
  (local_x m))

(cl:ensure-generic-function 'local_y-val :lambda-list '(m))
(cl:defmethod local_y-val ((m <drone_move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:local_y-val is deprecated.  Use mailroom-msg:local_y instead.")
  (local_y m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <drone_move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:height-val is deprecated.  Use mailroom-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'az_angle-val :lambda-list '(m))
(cl:defmethod az_angle-val ((m <drone_move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:az_angle-val is deprecated.  Use mailroom-msg:az_angle instead.")
  (az_angle m))

(cl:ensure-generic-function 'channels-val :lambda-list '(m))
(cl:defmethod channels-val ((m <drone_move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:channels-val is deprecated.  Use mailroom-msg:channels instead.")
  (channels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drone_move>) ostream)
  "Serializes a message object of type '<drone_move>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'local_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'local_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'az_angle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'az_angle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'az_angle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'az_angle)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drone_move>) istream)
  "Deserializes a message object of type '<drone_move>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'local_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'local_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'az_angle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'az_angle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'az_angle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'az_angle)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drone_move>)))
  "Returns string type for a message object of type '<drone_move>"
  "mailroom/drone_move")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drone_move)))
  "Returns string type for a message object of type 'drone_move"
  "mailroom/drone_move")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drone_move>)))
  "Returns md5sum for a message object of type '<drone_move>"
  "13cf322e3b3fad8fa26fe5682e2de0bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drone_move)))
  "Returns md5sum for a message object of type 'drone_move"
  "13cf322e3b3fad8fa26fe5682e2de0bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drone_move>)))
  "Returns full string definition for message of type '<drone_move>"
  (cl:format cl:nil "float64 local_x~%float64 local_y~%uint32 height~%uint32 az_angle~%uint32[] channels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drone_move)))
  "Returns full string definition for message of type 'drone_move"
  (cl:format cl:nil "float64 local_x~%float64 local_y~%uint32 height~%uint32 az_angle~%uint32[] channels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drone_move>))
  (cl:+ 0
     8
     8
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'channels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drone_move>))
  "Converts a ROS message object to a list"
  (cl:list 'drone_move
    (cl:cons ':local_x (local_x msg))
    (cl:cons ':local_y (local_y msg))
    (cl:cons ':height (height msg))
    (cl:cons ':az_angle (az_angle msg))
    (cl:cons ':channels (channels msg))
))
