;; Auto-generated. Do not edit!


(when (boundp 'wheredoigo::State)
  (if (not (find-package "WHEREDOIGO"))
    (make-package "WHEREDOIGO"))
  (shadow 'State (find-package "WHEREDOIGO")))
(unless (find-package "WHEREDOIGO::STATE")
  (make-package "WHEREDOIGO::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html


(defclass wheredoigo::State
  :super ros::object
  :slots (_id ))

(defmethod wheredoigo::State
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get wheredoigo::State :md5sum-) "309d4b30834b338cced19e5622a97a03")
(setf (get wheredoigo::State :datatype-) "wheredoigo/State")
(setf (get wheredoigo::State :definition-)
      "uint32 id

")



(provide :wheredoigo/State "309d4b30834b338cced19e5622a97a03")


