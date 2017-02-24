;; Auto-generated. Do not edit!


(when (boundp 'mailroom::drone_cmd)
  (if (not (find-package "MAILROOM"))
    (make-package "MAILROOM"))
  (shadow 'drone_cmd (find-package "MAILROOM")))
(unless (find-package "MAILROOM::DRONE_CMD")
  (make-package "MAILROOM::DRONE_CMD"))

(in-package "ROS")
;;//! \htmlinclude drone_cmd.msg.html


(defclass mailroom::drone_cmd
  :super ros::object
  :slots (_telemetry _channels ))

(defmethod mailroom::drone_cmd
  (:init
   (&key
    ((:telemetry __telemetry) (instance mailroom::drone_telemetry :init))
    ((:channels __channels) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _telemetry __telemetry)
   (setq _channels __channels)
   self)
  (:telemetry
   (&rest __telemetry)
   (if (keywordp (car __telemetry))
       (send* _telemetry __telemetry)
     (progn
       (if __telemetry (setq _telemetry (car __telemetry)))
       _telemetry)))
  (:channels
   (&optional __channels)
   (if __channels (setq _channels __channels)) _channels)
  (:serialization-length
   ()
   (+
    ;; mailroom/drone_telemetry _telemetry
    (send _telemetry :serialization-length)
    ;; uint8[] _channels
    (* 1    (length _channels)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mailroom/drone_telemetry _telemetry
       (send _telemetry :serialize s)
     ;; uint8[] _channels
     (write-long (length _channels) s)
     (princ _channels s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mailroom/drone_telemetry _telemetry
     (send _telemetry :deserialize buf ptr-) (incf ptr- (send _telemetry :serialization-length))
   ;; uint8[] _channels
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _channels (make-array n :element-type :char))
     (replace _channels buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get mailroom::drone_cmd :md5sum-) "31c966da147198d7cc374657df64a44b")
(setf (get mailroom::drone_cmd :datatype-) "mailroom/drone_cmd")
(setf (get mailroom::drone_cmd :definition-)
      "mailroom/drone_telemetry telemetry
uint8[] channels

================================================================================
MSG: mailroom/drone_telemetry
float64 longitude
float64 latitude
uint8 height
uint8 az_angle

")



(provide :mailroom/drone_cmd "31c966da147198d7cc374657df64a44b")


