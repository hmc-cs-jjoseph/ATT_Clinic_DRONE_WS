; Auto-generated. Do not edit!


(cl:in-package mailroom-msg)


;//! \htmlinclude drone_telemetry.msg.html

(cl:defclass <drone_telemetry> (roslisp-msg-protocol:ros-message)
  ((longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:fixnum
    :initform 0)
   (az_angle
    :reader az_angle
    :initarg :az_angle
    :type cl:fixnum
    :initform 0))
)

(cl:defclass drone_telemetry (<drone_telemetry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drone_telemetry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drone_telemetry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mailroom-msg:<drone_telemetry> is deprecated: use mailroom-msg:drone_telemetry instead.")))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <drone_telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:longitude-val is deprecated.  Use mailroom-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <drone_telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:latitude-val is deprecated.  Use mailroom-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <drone_telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:height-val is deprecated.  Use mailroom-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'az_angle-val :lambda-list '(m))
(cl:defmethod az_angle-val ((m <drone_telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:az_angle-val is deprecated.  Use mailroom-msg:az_angle instead.")
  (az_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drone_telemetry>) ostream)
  "Serializes a message object of type '<drone_telemetry>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'az_angle)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drone_telemetry>) istream)
  "Deserializes a message object of type '<drone_telemetry>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'az_angle)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drone_telemetry>)))
  "Returns string type for a message object of type '<drone_telemetry>"
  "mailroom/drone_telemetry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drone_telemetry)))
  "Returns string type for a message object of type 'drone_telemetry"
  "mailroom/drone_telemetry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drone_telemetry>)))
  "Returns md5sum for a message object of type '<drone_telemetry>"
  "67912beb69b5afc3f72f11f99217a1f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drone_telemetry)))
  "Returns md5sum for a message object of type 'drone_telemetry"
  "67912beb69b5afc3f72f11f99217a1f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drone_telemetry>)))
  "Returns full string definition for message of type '<drone_telemetry>"
  (cl:format cl:nil "float64 longitude~%float64 latitude~%uint8 height~%uint8 az_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drone_telemetry)))
  "Returns full string definition for message of type 'drone_telemetry"
  (cl:format cl:nil "float64 longitude~%float64 latitude~%uint8 height~%uint8 az_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drone_telemetry>))
  (cl:+ 0
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drone_telemetry>))
  "Converts a ROS message object to a list"
  (cl:list 'drone_telemetry
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':height (height msg))
    (cl:cons ':az_angle (az_angle msg))
))
