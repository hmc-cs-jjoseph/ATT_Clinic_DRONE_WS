; Auto-generated. Do not edit!


(cl:in-package mailroom-msg)


;//! \htmlinclude drone_status.msg.html

(cl:defclass <drone_status> (roslisp-msg-protocol:ros-message)
  ((telemetry
    :reader telemetry
    :initarg :telemetry
    :type mailroom-msg:drone_telemetry
    :initform (cl:make-instance 'mailroom-msg:drone_telemetry))
   (signal
    :reader signal
    :initarg :signal
    :type (cl:vector mailroom-msg:ATSCsignal)
   :initform (cl:make-array 0 :element-type 'mailroom-msg:ATSCsignal :initial-element (cl:make-instance 'mailroom-msg:ATSCsignal)))
   (battery
    :reader battery
    :initarg :battery
    :type cl:integer
    :initform 0))
)

(cl:defclass drone_status (<drone_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drone_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drone_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mailroom-msg:<drone_status> is deprecated: use mailroom-msg:drone_status instead.")))

(cl:ensure-generic-function 'telemetry-val :lambda-list '(m))
(cl:defmethod telemetry-val ((m <drone_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:telemetry-val is deprecated.  Use mailroom-msg:telemetry instead.")
  (telemetry m))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <drone_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:signal-val is deprecated.  Use mailroom-msg:signal instead.")
  (signal m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <drone_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:battery-val is deprecated.  Use mailroom-msg:battery instead.")
  (battery m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drone_status>) ostream)
  "Serializes a message object of type '<drone_status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'telemetry) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'signal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'signal))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'battery)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'battery)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drone_status>) istream)
  "Deserializes a message object of type '<drone_status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'telemetry) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'signal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'signal)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mailroom-msg:ATSCsignal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'battery)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'battery)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drone_status>)))
  "Returns string type for a message object of type '<drone_status>"
  "mailroom/drone_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drone_status)))
  "Returns string type for a message object of type 'drone_status"
  "mailroom/drone_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drone_status>)))
  "Returns md5sum for a message object of type '<drone_status>"
  "56e85cfc37e2764b4f83194b846ae01c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drone_status)))
  "Returns md5sum for a message object of type 'drone_status"
  "56e85cfc37e2764b4f83194b846ae01c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drone_status>)))
  "Returns full string definition for message of type '<drone_status>"
  (cl:format cl:nil "mailroom/drone_telemetry telemetry~%mailroom/ATSCsignal[] signal~%uint32 battery~%~%================================================================================~%MSG: mailroom/drone_telemetry~%float64 local_x~%float64 local_y~%uint8 height~%uint8 az_angle~%~%================================================================================~%MSG: mailroom/ATSCsignal~%uint32 channel~%uint32 SS~%uint32 SNQ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drone_status)))
  "Returns full string definition for message of type 'drone_status"
  (cl:format cl:nil "mailroom/drone_telemetry telemetry~%mailroom/ATSCsignal[] signal~%uint32 battery~%~%================================================================================~%MSG: mailroom/drone_telemetry~%float64 local_x~%float64 local_y~%uint8 height~%uint8 az_angle~%~%================================================================================~%MSG: mailroom/ATSCsignal~%uint32 channel~%uint32 SS~%uint32 SNQ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drone_status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'telemetry))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'signal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drone_status>))
  "Converts a ROS message object to a list"
  (cl:list 'drone_status
    (cl:cons ':telemetry (telemetry msg))
    (cl:cons ':signal (signal msg))
    (cl:cons ':battery (battery msg))
))
