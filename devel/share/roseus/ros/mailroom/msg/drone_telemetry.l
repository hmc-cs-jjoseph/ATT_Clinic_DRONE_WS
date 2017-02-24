;; Auto-generated. Do not edit!


(when (boundp 'mailroom::drone_telemetry)
  (if (not (find-package "MAILROOM"))
    (make-package "MAILROOM"))
  (shadow 'drone_telemetry (find-package "MAILROOM")))
(unless (find-package "MAILROOM::DRONE_TELEMETRY")
  (make-package "MAILROOM::DRONE_TELEMETRY"))

(in-package "ROS")
;;//! \htmlinclude drone_telemetry.msg.html


(defclass mailroom::drone_telemetry
  :super ros::object
  :slots (_longitude _latitude _height _az_angle ))

(defmethod mailroom::drone_telemetry
  (:init
   (&key
    ((:longitude __longitude) 0.0)
    ((:latitude __latitude) 0.0)
    ((:height __height) 0)
    ((:az_angle __az_angle) 0)
    )
   (send-super :init)
   (setq _longitude (float __longitude))
   (setq _latitude (float __latitude))
   (setq _height (round __height))
   (setq _az_angle (round __az_angle))
   self)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:az_angle
   (&optional __az_angle)
   (if __az_angle (setq _az_angle __az_angle)) _az_angle)
  (:serialization-length
   ()
   (+
    ;; float64 _longitude
    8
    ;; float64 _latitude
    8
    ;; uint8 _height
    1
    ;; uint8 _az_angle
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _height
       (write-byte _height s)
     ;; uint8 _az_angle
       (write-byte _az_angle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _height
     (setq _height (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _az_angle
     (setq _az_angle (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mailroom::drone_telemetry :md5sum-) "67912beb69b5afc3f72f11f99217a1f2")
(setf (get mailroom::drone_telemetry :datatype-) "mailroom/drone_telemetry")
(setf (get mailroom::drone_telemetry :definition-)
      "float64 longitude
float64 latitude
uint8 height
uint8 az_angle

")



(provide :mailroom/drone_telemetry "67912beb69b5afc3f72f11f99217a1f2")


