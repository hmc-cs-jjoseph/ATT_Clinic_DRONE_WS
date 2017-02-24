;; Auto-generated. Do not edit!


(when (boundp 'mailroom::drone_status)
  (if (not (find-package "MAILROOM"))
    (make-package "MAILROOM"))
  (shadow 'drone_status (find-package "MAILROOM")))
(unless (find-package "MAILROOM::DRONE_STATUS")
  (make-package "MAILROOM::DRONE_STATUS"))

(in-package "ROS")
;;//! \htmlinclude drone_status.msg.html


(defclass mailroom::drone_status
  :super ros::object
  :slots (_telemetry _signal ))

(defmethod mailroom::drone_status
  (:init
   (&key
    ((:telemetry __telemetry) (instance mailroom::drone_telemetry :init))
    ((:signal __signal) (let (r) (dotimes (i 0) (push (instance mailroom::ATSCsignal :init) r)) r))
    )
   (send-super :init)
   (setq _telemetry __telemetry)
   (setq _signal __signal)
   self)
  (:telemetry
   (&rest __telemetry)
   (if (keywordp (car __telemetry))
       (send* _telemetry __telemetry)
     (progn
       (if __telemetry (setq _telemetry (car __telemetry)))
       _telemetry)))
  (:signal
   (&rest __signal)
   (if (keywordp (car __signal))
       (send* _signal __signal)
     (progn
       (if __signal (setq _signal (car __signal)))
       _signal)))
  (:serialization-length
   ()
   (+
    ;; mailroom/drone_telemetry _telemetry
    (send _telemetry :serialization-length)
    ;; mailroom/ATSCsignal[] _signal
    (apply #'+ (send-all _signal :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mailroom/drone_telemetry _telemetry
       (send _telemetry :serialize s)
     ;; mailroom/ATSCsignal[] _signal
     (write-long (length _signal) s)
     (dolist (elem _signal)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mailroom/drone_telemetry _telemetry
     (send _telemetry :deserialize buf ptr-) (incf ptr- (send _telemetry :serialization-length))
   ;; mailroom/ATSCsignal[] _signal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _signal (let (r) (dotimes (i n) (push (instance mailroom::ATSCsignal :init) r)) r))
     (dolist (elem- _signal)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mailroom::drone_status :md5sum-) "b484c2ff6abc5985d5ae3dd8f029ac81")
(setf (get mailroom::drone_status :datatype-) "mailroom/drone_status")
(setf (get mailroom::drone_status :definition-)
      "mailroom/drone_telemetry telemetry
mailroom/ATSCsignal[] signal

================================================================================
MSG: mailroom/drone_telemetry
float64 longitude
float64 latitude
uint8 height
uint8 az_angle

================================================================================
MSG: mailroom/ATSCsignal
uint8 channel
uint8 SS
uint8 SNQ

")



(provide :mailroom/drone_status "b484c2ff6abc5985d5ae3dd8f029ac81")


