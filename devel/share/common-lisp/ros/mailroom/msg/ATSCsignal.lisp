; Auto-generated. Do not edit!


(cl:in-package mailroom-msg)


;//! \htmlinclude ATSCsignal.msg.html

(cl:defclass <ATSCsignal> (roslisp-msg-protocol:ros-message)
  ((channel
    :reader channel
    :initarg :channel
    :type cl:integer
    :initform 0)
   (SS
    :reader SS
    :initarg :SS
    :type cl:integer
    :initform 0)
   (SNQ
    :reader SNQ
    :initarg :SNQ
    :type cl:integer
    :initform 0))
)

(cl:defclass ATSCsignal (<ATSCsignal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ATSCsignal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ATSCsignal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mailroom-msg:<ATSCsignal> is deprecated: use mailroom-msg:ATSCsignal instead.")))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <ATSCsignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:channel-val is deprecated.  Use mailroom-msg:channel instead.")
  (channel m))

(cl:ensure-generic-function 'SS-val :lambda-list '(m))
(cl:defmethod SS-val ((m <ATSCsignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:SS-val is deprecated.  Use mailroom-msg:SS instead.")
  (SS m))

(cl:ensure-generic-function 'SNQ-val :lambda-list '(m))
(cl:defmethod SNQ-val ((m <ATSCsignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mailroom-msg:SNQ-val is deprecated.  Use mailroom-msg:SNQ instead.")
  (SNQ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ATSCsignal>) ostream)
  "Serializes a message object of type '<ATSCsignal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'channel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'channel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'channel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SS)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SS)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'SS)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'SS)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SNQ)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SNQ)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'SNQ)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'SNQ)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ATSCsignal>) istream)
  "Deserializes a message object of type '<ATSCsignal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'channel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'channel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'channel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SS)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SS)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'SS)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'SS)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SNQ)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SNQ)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'SNQ)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'SNQ)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ATSCsignal>)))
  "Returns string type for a message object of type '<ATSCsignal>"
  "mailroom/ATSCsignal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ATSCsignal)))
  "Returns string type for a message object of type 'ATSCsignal"
  "mailroom/ATSCsignal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ATSCsignal>)))
  "Returns md5sum for a message object of type '<ATSCsignal>"
  "0a289453f346fcf5fbd110cae2a72009")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ATSCsignal)))
  "Returns md5sum for a message object of type 'ATSCsignal"
  "0a289453f346fcf5fbd110cae2a72009")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ATSCsignal>)))
  "Returns full string definition for message of type '<ATSCsignal>"
  (cl:format cl:nil "uint32 channel~%uint32 SS~%uint32 SNQ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ATSCsignal)))
  "Returns full string definition for message of type 'ATSCsignal"
  (cl:format cl:nil "uint32 channel~%uint32 SS~%uint32 SNQ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ATSCsignal>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ATSCsignal>))
  "Converts a ROS message object to a list"
  (cl:list 'ATSCsignal
    (cl:cons ':channel (channel msg))
    (cl:cons ':SS (SS msg))
    (cl:cons ':SNQ (SNQ msg))
))
