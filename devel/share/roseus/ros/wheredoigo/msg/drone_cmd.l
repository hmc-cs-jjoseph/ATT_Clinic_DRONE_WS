;; Auto-generated. Do not edit!


(when (boundp 'wheredoigo::drone_cmd)
  (if (not (find-package "WHEREDOIGO"))
    (make-package "WHEREDOIGO"))
  (shadow 'drone_cmd (find-package "WHEREDOIGO")))
(unless (find-package "WHEREDOIGO::DRONE_CMD")
  (make-package "WHEREDOIGO::DRONE_CMD"))

(in-package "ROS")
;;//! \htmlinclude drone_cmd.msg.html


(defclass wheredoigo::drone_cmd
  :super ros::object
  :slots (_data _heights _channels ))

(defmethod wheredoigo::drone_cmd
  (:init
   (&key
    ((:data __data) 0)
    ((:heights __heights) (make-array 0 :initial-element 0 :element-type :integer))
    ((:channels __channels) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _data (round __data))
   (setq _heights __heights)
   (setq _channels __channels)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:heights
   (&optional __heights)
   (if __heights (setq _heights __heights)) _heights)
  (:channels
   (&optional __channels)
   (if __channels (setq _channels __channels)) _channels)
  (:serialization-length
   ()
   (+
    ;; uint32 _data
    4
    ;; uint32[] _heights
    (* 4    (length _heights)) 4
    ;; uint32[] _channels
    (* 4    (length _channels)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _data
       (write-long _data s)
     ;; uint32[] _heights
     (write-long (length _heights) s)
     (dotimes (i (length _heights))
       (write-long (elt _heights i) s)
       )
     ;; uint32[] _channels
     (write-long (length _channels) s)
     (dotimes (i (length _channels))
       (write-long (elt _channels i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _heights
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _heights (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _heights i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
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

(setf (get wheredoigo::drone_cmd :md5sum-) "356e76f7e1df41ac5081a94634ddddce")
(setf (get wheredoigo::drone_cmd :datatype-) "wheredoigo/drone_cmd")
(setf (get wheredoigo::drone_cmd :definition-)
      "uint32 data
uint32[] heights
uint32[] channels

")



(provide :wheredoigo/drone_cmd "356e76f7e1df41ac5081a94634ddddce")


