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
  :slots (_telemetry _signal _battery ))

(defmethod mailroom::drone_status
  (:init
   (&key
    ((:telemetry __telemetry) (instance mailroom::drone_telemetry :init))
    ((:signal __signal) (let (r) (dotimes (i 0) (push (instance mailroom::ATSCsignal :init) r)) r))
    ((:battery __battery) 0)
    )
   (send-super :init)
   (setq _telemetry __telemetry)
   (setq _signal __signal)
   (setq _battery (round __battery))
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
  (:battery
   (&optional __battery)
   (if __battery (setq _battery __battery)) _battery)
  (:serialization-length
   ()
   (+
    ;; mailroom/drone_telemetry _telemetry
    (send _telemetry :serialization-length)
    ;; mailroom/ATSCsignal[] _signal
    (apply #'+ (send-all _signal :serialization-length)) 4
    ;; uint32 _battery
    4
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
     ;; uint32 _battery
       (write-long _battery s)
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
   ;; uint32 _battery
     (setq _battery (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mailroom::drone_status :md5sum-) "56e85cfc37e2764b4f83194b846ae01c")
(setf (get mailroom::drone_status :datatype-) "mailroom/drone_status")
(setf (get mailroom::drone_status :definition-)
      "mailroom/drone_telemetry telemetry
mailroom/ATSCsignal[] signal
uint32 battery

================================================================================
MSG: mailroom/drone_telemetry
float64 local_x
float64 local_y
uint8 height
uint8 az_angle

================================================================================
MSG: mailroom/ATSCsignal
uint32 channel
uint32 SS
uint32 SNQ

")



(provide :mailroom/drone_status "56e85cfc37e2764b4f83194b846ae01c")


