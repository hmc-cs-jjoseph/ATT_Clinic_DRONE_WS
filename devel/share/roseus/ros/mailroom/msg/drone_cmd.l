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
  :slots (_data _local_x _local_y _heights _az_angle _channels ))

(defmethod mailroom::drone_cmd
  (:init
   (&key
    ((:data __data) "")
    ((:local_x __local_x) 0.0)
    ((:local_y __local_y) 0.0)
    ((:heights __heights) (make-array 0 :initial-element 0 :element-type :char))
    ((:az_angle __az_angle) 0)
    ((:channels __channels) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _data (string __data))
   (setq _local_x (float __local_x))
   (setq _local_y (float __local_y))
   (setq _heights __heights)
   (setq _az_angle (round __az_angle))
   (setq _channels __channels)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:local_x
   (&optional __local_x)
   (if __local_x (setq _local_x __local_x)) _local_x)
  (:local_y
   (&optional __local_y)
   (if __local_y (setq _local_y __local_y)) _local_y)
  (:heights
   (&optional __heights)
   (if __heights (setq _heights __heights)) _heights)
  (:az_angle
   (&optional __az_angle)
   (if __az_angle (setq _az_angle __az_angle)) _az_angle)
  (:channels
   (&optional __channels)
   (if __channels (setq _channels __channels)) _channels)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ;; float64 _local_x
    8
    ;; float64 _local_y
    8
    ;; uint8[] _heights
    (* 1    (length _heights)) 4
    ;; uint8 _az_angle
    1
    ;; uint8[] _channels
    (* 1    (length _channels)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; float64 _local_x
       (sys::poke _local_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _local_y
       (sys::poke _local_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8[] _heights
     (write-long (length _heights) s)
     (princ _heights s)
     ;; uint8 _az_angle
       (write-byte _az_angle s)
     ;; uint8[] _channels
     (write-long (length _channels) s)
     (princ _channels s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _local_x
     (setq _local_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _local_y
     (setq _local_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8[] _heights
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _heights (make-array n :element-type :char))
     (replace _heights buf :start2 ptr-) (incf ptr- n))
   ;; uint8 _az_angle
     (setq _az_angle (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _channels
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _channels (make-array n :element-type :char))
     (replace _channels buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get mailroom::drone_cmd :md5sum-) "7b2b47fd3d9aeb75628a01f6c100e808")
(setf (get mailroom::drone_cmd :datatype-) "mailroom/drone_cmd")
(setf (get mailroom::drone_cmd :definition-)
      "string data
float64 local_x
float64 local_y
uint8[] heights
uint8 az_angle
uint8[] channels

")



(provide :mailroom/drone_cmd "7b2b47fd3d9aeb75628a01f6c100e808")


