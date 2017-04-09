; Auto-generated. Do not edit!


(cl:in-package wheredoigo-msg)


;//! \htmlinclude ATSCsignal.msg.html

(cl:defclass <ATSCsignal> (roslisp-msg-protocol:ros-message)
  ((channel
    :reader channel
    :initarg :channel
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (SS
    :reader SS
    :initarg :SS
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (SNQ
    :reader SNQ
    :initarg :SNQ
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ATSCsignal (<ATSCsignal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ATSCsignal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ATSCsignal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wheredoigo-msg:<ATSCsignal> is deprecated: use wheredoigo-msg:ATSCsignal instead.")))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <ATSCsignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wheredoigo-msg:channel-val is deprecated.  Use wheredoigo-msg:channel instead.")
  (channel m))

(cl:ensure-generic-function 'SS-val :lambda-list '(m))
(cl:defmethod SS-val ((m <ATSCsignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wheredoigo-msg:SS-val is deprecated.  Use wheredoigo-msg:SS instead.")
  (SS m))

(cl:ensure-generic-function 'SNQ-val :lambda-list '(m))
(cl:defmethod SNQ-val ((m <ATSCsignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wheredoigo-msg:SNQ-val is deprecated.  Use wheredoigo-msg:SNQ instead.")
  (SNQ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ATSCsignal>) ostream)
  "Serializes a message object of type '<ATSCsignal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'channel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'channel))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'SS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'SS))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'SNQ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'SNQ))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ATSCsignal>) istream)
  "Deserializes a message object of type '<ATSCsignal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'channel) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'channel)))
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
  (cl:setf (cl:slot-value msg 'SS) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'SS)))
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
  (cl:setf (cl:slot-value msg 'SNQ) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'SNQ)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ATSCsignal>)))
  "Returns string type for a message object of type '<ATSCsignal>"
  "wheredoigo/ATSCsignal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ATSCsignal)))
  "Returns string type for a message object of type 'ATSCsignal"
  "wheredoigo/ATSCsignal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ATSCsignal>)))
  "Returns md5sum for a message object of type '<ATSCsignal>"
  "1ccd2ea36ff16d36a5ac9c2f8d4f7377")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ATSCsignal)))
  "Returns md5sum for a message object of type 'ATSCsignal"
  "1ccd2ea36ff16d36a5ac9c2f8d4f7377")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ATSCsignal>)))
  "Returns full string definition for message of type '<ATSCsignal>"
  (cl:format cl:nil "uint32[] channel~%uint32[] SS~%uint32[] SNQ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ATSCsignal)))
  "Returns full string definition for message of type 'ATSCsignal"
  (cl:format cl:nil "uint32[] channel~%uint32[] SS~%uint32[] SNQ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ATSCsignal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'channel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'SS) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'SNQ) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ATSCsignal>))
  "Converts a ROS message object to a list"
  (cl:list 'ATSCsignal
    (cl:cons ':channel (channel msg))
    (cl:cons ':SS (SS msg))
    (cl:cons ':SNQ (SNQ msg))
))
