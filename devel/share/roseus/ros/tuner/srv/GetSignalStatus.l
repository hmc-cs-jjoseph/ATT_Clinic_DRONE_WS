;; Auto-generated. Do not edit!


(when (boundp 'tuner::GetSignalStatus)
  (if (not (find-package "TUNER"))
    (make-package "TUNER"))
  (shadow 'GetSignalStatus (find-package "TUNER")))
(unless (find-package "TUNER::GETSIGNALSTATUS")
  (make-package "TUNER::GETSIGNALSTATUS"))
(unless (find-package "TUNER::GETSIGNALSTATUSREQUEST")
  (make-package "TUNER::GETSIGNALSTATUSREQUEST"))
(unless (find-package "TUNER::GETSIGNALSTATUSRESPONSE")
  (make-package "TUNER::GETSIGNALSTATUSRESPONSE"))

(in-package "ROS")



(if (not (find-package "MAILROOM"))
  (ros::roseus-add-msgs "mailroom"))


(defclass tuner::GetSignalStatusRequest
  :super ros::object
  :slots (_channels ))

(defmethod tuner::GetSignalStatusRequest
  (:init
   (&key
    ((:channels __channels) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _channels __channels)
   self)
  (:channels
   (&optional __channels)
   (if __channels (setq _channels __channels)) _channels)
  (:serialization-length
   ()
   (+
    ;; uint32[] _channels
    (* 4    (length _channels)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _channels
     (write-long (length _channels) s)
     (dotimes (i (length _channels))
       (write-long (elt _channels i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _channels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channels (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _channels i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass tuner::GetSignalStatusResponse
  :super ros::object
  :slots (_signaldata ))

(defmethod tuner::GetSignalStatusResponse
  (:init
   (&key
    ((:signaldata __signaldata) (instance mailroom::ATSCsignal :init))
    )
   (send-super :init)
   (setq _signaldata __signaldata)
   self)
  (:signaldata
   (&rest __signaldata)
   (if (keywordp (car __signaldata))
       (send* _signaldata __signaldata)
     (progn
       (if __signaldata (setq _signaldata (car __signaldata)))
       _signaldata)))
  (:serialization-length
   ()
   (+
    ;; mailroom/ATSCsignal _signaldata
    (send _signaldata :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mailroom/ATSCsignal _signaldata
       (send _signaldata :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mailroom/ATSCsignal _signaldata
     (send _signaldata :deserialize buf ptr-) (incf ptr- (send _signaldata :serialization-length))
   ;;
   self)
  )

(defclass tuner::GetSignalStatus
  :super ros::object
  :slots ())

(setf (get tuner::GetSignalStatus :md5sum-) "41a9cc73a337b690d67415ba83b38372")
(setf (get tuner::GetSignalStatus :datatype-) "tuner/GetSignalStatus")
(setf (get tuner::GetSignalStatus :request) tuner::GetSignalStatusRequest)
(setf (get tuner::GetSignalStatus :response) tuner::GetSignalStatusResponse)

(defmethod tuner::GetSignalStatusRequest
  (:response () (instance tuner::GetSignalStatusResponse :init)))

(setf (get tuner::GetSignalStatusRequest :md5sum-) "41a9cc73a337b690d67415ba83b38372")
(setf (get tuner::GetSignalStatusRequest :datatype-) "tuner/GetSignalStatusRequest")
(setf (get tuner::GetSignalStatusRequest :definition-)
      "uint32[] channels
---
mailroom/ATSCsignal signaldata


================================================================================
MSG: mailroom/ATSCsignal
uint32[] channel
uint32[] SS
uint32[] SNQ
")

(setf (get tuner::GetSignalStatusResponse :md5sum-) "41a9cc73a337b690d67415ba83b38372")
(setf (get tuner::GetSignalStatusResponse :datatype-) "tuner/GetSignalStatusResponse")
(setf (get tuner::GetSignalStatusResponse :definition-)
      "uint32[] channels
---
mailroom/ATSCsignal signaldata


================================================================================
MSG: mailroom/ATSCsignal
uint32[] channel
uint32[] SS
uint32[] SNQ
")



(provide :tuner/GetSignalStatus "41a9cc73a337b690d67415ba83b38372")


