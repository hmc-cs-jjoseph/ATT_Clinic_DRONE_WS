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
  :slots (_local_x _local_y _height _az_angle ))

(defmethod mailroom::drone_telemetry
  (:init
   (&key
    ((:local_x __local_x) 0.0)
    ((:local_y __local_y) 0.0)
    ((:height __height) 0)
    ((:az_angle __az_angle) 0)
    )
   (send-super :init)
   (setq _local_x (float __local_x))
   (setq _local_y (float __local_y))
   (setq _height (round __height))
   (setq _az_angle (round __az_angle))
   self)
  (:local_x
   (&optional __local_x)
   (if __local_x (setq _local_x __local_x)) _local_x)
  (:local_y
   (&optional __local_y)
   (if __local_y (setq _local_y __local_y)) _local_y)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:az_angle
   (&optional __az_angle)
   (if __az_angle (setq _az_angle __az_angle)) _az_angle)
  (:serialization-length
   ()
   (+
    ;; float64 _local_x
    8
    ;; float64 _local_y
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
     ;; float64 _local_x
       (sys::poke _local_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _local_y
       (sys::poke _local_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _height
       (write-byte _height s)
     ;; uint8 _az_angle
       (write-byte _az_angle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _local_x
     (setq _local_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _local_y
     (setq _local_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _height
     (setq _height (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _az_angle
     (setq _az_angle (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mailroom::drone_telemetry :md5sum-) "792f8e5647216f2868c34781b5225bcb")
(setf (get mailroom::drone_telemetry :datatype-) "mailroom/drone_telemetry")
(setf (get mailroom::drone_telemetry :definition-)
      "float64 local_x
float64 local_y
uint8 height
uint8 az_angle

")



(provide :mailroom/drone_telemetry "792f8e5647216f2868c34781b5225bcb")


