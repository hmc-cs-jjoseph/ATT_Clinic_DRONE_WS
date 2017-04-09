;; Auto-generated. Do not edit!


(when (boundp 'wheredoigo::ATSCsignal)
  (if (not (find-package "WHEREDOIGO"))
    (make-package "WHEREDOIGO"))
  (shadow 'ATSCsignal (find-package "WHEREDOIGO")))
(unless (find-package "WHEREDOIGO::ATSCSIGNAL")
  (make-package "WHEREDOIGO::ATSCSIGNAL"))

(in-package "ROS")
;;//! \htmlinclude ATSCsignal.msg.html


(defclass wheredoigo::ATSCsignal
  :super ros::object
  :slots (_channel _SS _SNQ ))

(defmethod wheredoigo::ATSCsignal
  (:init
   (&key
    ((:channel __channel) (make-array 0 :initial-element 0 :element-type :integer))
    ((:SS __SS) (make-array 0 :initial-element 0 :element-type :integer))
    ((:SNQ __SNQ) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _channel __channel)
   (setq _SS __SS)
   (setq _SNQ __SNQ)
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:SS
   (&optional __SS)
   (if __SS (setq _SS __SS)) _SS)
  (:SNQ
   (&optional __SNQ)
   (if __SNQ (setq _SNQ __SNQ)) _SNQ)
  (:serialization-length
   ()
   (+
    ;; uint32[] _channel
    (* 4    (length _channel)) 4
    ;; uint32[] _SS
    (* 4    (length _SS)) 4
    ;; uint32[] _SNQ
    (* 4    (length _SNQ)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _channel
     (write-long (length _channel) s)
     (dotimes (i (length _channel))
       (write-long (elt _channel i) s)
       )
     ;; uint32[] _SS
     (write-long (length _SS) s)
     (dotimes (i (length _SS))
       (write-long (elt _SS i) s)
       )
     ;; uint32[] _SNQ
     (write-long (length _SNQ) s)
     (dotimes (i (length _SNQ))
       (write-long (elt _SNQ i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _channel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channel (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _channel i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _SS
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _SS (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _SS i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _SNQ
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _SNQ (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _SNQ i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get wheredoigo::ATSCsignal :md5sum-) "1ccd2ea36ff16d36a5ac9c2f8d4f7377")
(setf (get wheredoigo::ATSCsignal :datatype-) "wheredoigo/ATSCsignal")
(setf (get wheredoigo::ATSCsignal :definition-)
      "uint32[] channel
uint32[] SS
uint32[] SNQ

")



(provide :wheredoigo/ATSCsignal "1ccd2ea36ff16d36a5ac9c2f8d4f7377")


