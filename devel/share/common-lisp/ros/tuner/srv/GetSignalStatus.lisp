; Auto-generated. Do not edit!


(cl:in-package tuner-srv)


;//! \htmlinclude GetSignalStatus-request.msg.html

(cl:defclass <GetSignalStatus-request> (roslisp-msg-protocol:ros-message)
  ((channels
    :reader channels
    :initarg :channels
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass GetSignalStatus-request (<GetSignalStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSignalStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSignalStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuner-srv:<GetSignalStatus-request> is deprecated: use tuner-srv:GetSignalStatus-request instead.")))

(cl:ensure-generic-function 'channels-val :lambda-list '(m))
(cl:defmethod channels-val ((m <GetSignalStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuner-srv:channels-val is deprecated.  Use tuner-srv:channels instead.")
  (channels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSignalStatus-request>) ostream)
  "Serializes a message object of type '<GetSignalStatus-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSignalStatus-request>) istream)
  "Deserializes a message object of type '<GetSignalStatus-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSignalStatus-request>)))
  "Returns string type for a service object of type '<GetSignalStatus-request>"
  "tuner/GetSignalStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSignalStatus-request)))
  "Returns string type for a service object of type 'GetSignalStatus-request"
  "tuner/GetSignalStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSignalStatus-request>)))
  "Returns md5sum for a message object of type '<GetSignalStatus-request>"
  "41a9cc73a337b690d67415ba83b38372")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSignalStatus-request)))
  "Returns md5sum for a message object of type 'GetSignalStatus-request"
  "41a9cc73a337b690d67415ba83b38372")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSignalStatus-request>)))
  "Returns full string definition for message of type '<GetSignalStatus-request>"
  (cl:format cl:nil "uint32[] channels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSignalStatus-request)))
  "Returns full string definition for message of type 'GetSignalStatus-request"
  (cl:format cl:nil "uint32[] channels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSignalStatus-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'channels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSignalStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSignalStatus-request
    (cl:cons ':channels (channels msg))
))
;//! \htmlinclude GetSignalStatus-response.msg.html

(cl:defclass <GetSignalStatus-response> (roslisp-msg-protocol:ros-message)
  ((signaldata
    :reader signaldata
    :initarg :signaldata
    :type mailroom-msg:ATSCsignal
    :initform (cl:make-instance 'mailroom-msg:ATSCsignal)))
)

(cl:defclass GetSignalStatus-response (<GetSignalStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSignalStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSignalStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuner-srv:<GetSignalStatus-response> is deprecated: use tuner-srv:GetSignalStatus-response instead.")))

(cl:ensure-generic-function 'signaldata-val :lambda-list '(m))
(cl:defmethod signaldata-val ((m <GetSignalStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuner-srv:signaldata-val is deprecated.  Use tuner-srv:signaldata instead.")
  (signaldata m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSignalStatus-response>) ostream)
  "Serializes a message object of type '<GetSignalStatus-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'signaldata) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSignalStatus-response>) istream)
  "Deserializes a message object of type '<GetSignalStatus-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'signaldata) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSignalStatus-response>)))
  "Returns string type for a service object of type '<GetSignalStatus-response>"
  "tuner/GetSignalStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSignalStatus-response)))
  "Returns string type for a service object of type 'GetSignalStatus-response"
  "tuner/GetSignalStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSignalStatus-response>)))
  "Returns md5sum for a message object of type '<GetSignalStatus-response>"
  "41a9cc73a337b690d67415ba83b38372")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSignalStatus-response)))
  "Returns md5sum for a message object of type 'GetSignalStatus-response"
  "41a9cc73a337b690d67415ba83b38372")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSignalStatus-response>)))
  "Returns full string definition for message of type '<GetSignalStatus-response>"
  (cl:format cl:nil "mailroom/ATSCsignal signaldata~%~%~%================================================================================~%MSG: mailroom/ATSCsignal~%uint32[] channel~%uint32[] SS~%uint32[] SNQ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSignalStatus-response)))
  "Returns full string definition for message of type 'GetSignalStatus-response"
  (cl:format cl:nil "mailroom/ATSCsignal signaldata~%~%~%================================================================================~%MSG: mailroom/ATSCsignal~%uint32[] channel~%uint32[] SS~%uint32[] SNQ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSignalStatus-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'signaldata))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSignalStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSignalStatus-response
    (cl:cons ':signaldata (signaldata msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSignalStatus)))
  'GetSignalStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSignalStatus)))
  'GetSignalStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSignalStatus)))
  "Returns string type for a service object of type '<GetSignalStatus>"
  "tuner/GetSignalStatus")