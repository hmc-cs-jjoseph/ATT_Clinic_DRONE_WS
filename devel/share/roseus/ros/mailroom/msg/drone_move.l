;; Auto-generated. Do not edit!


(when (boundp 'mailroom::drone_move)
  (if (not (find-package "MAILROOM"))
    (make-package "MAILROOM"))
  (shadow 'drone_move (find-package "MAILROOM")))
(unless (find-package "MAILROOM::DRONE_MOVE")
  (make-package "MAILROOM::DRONE_MOVE"))

(in-package "ROS")
;;//! \htmlinclude drone_move.msg.html


(defclass mailroom::drone_move
  :super ros::object
  :slots (_local_x _local_y _height _az_angle _channels ))

(defmethod mailroom::drone_move
  (:init
   (&key
    ((:local_x __local_x) 0.0)
    ((:local_y __local_y) 0.0)
    ((:height __height) 0.0)
    ((:az_angle __az_angle) 0.0)
    ((:channels __channels) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _local_x (float __local_x))
   (setq _local_y (float __local_y))
   (setq _height (float __height))
   (setq _az_angle (float __az_angle))
   (setq _channels __channels)
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
  (:channels
   (&optional __channels)
   (if __channels (setq _channels __channels)) _channels)
  (:serialization-length
   ()
   (+
    ;; float32 _local_x
    4
    ;; float32 _local_y
    4
    ;; float32 _height
    4
    ;; float32 _az_angle
    4
    ;; uint32[] _channels
    (* 4    (length _channels)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _local_x
       (sys::poke _local_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _local_y
       (sys::poke _local_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _az_angle
       (sys::poke _az_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32[] _channels
     (write-long (length _channels) s)
     (dotimes (i (length _channels))
       (write-long (elt _channels i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _local_x
     (setq _local_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _local_y
     (setq _local_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _az_angle
     (setq _az_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
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

(setf (get mailroom::drone_move :md5sum-) "d3e5d4bf910ad7e655ded5b4d5eff2ea")
(setf (get mailroom::drone_move :datatype-) "mailroom/drone_move")
(setf (get mailroom::drone_move :definition-)
      "float32 local_x
float32 local_y
float32 height
float32 az_angle
uint32[] channels

")



(provide :mailroom/drone_move "d3e5d4bf910ad7e655ded5b4d5eff2ea")


