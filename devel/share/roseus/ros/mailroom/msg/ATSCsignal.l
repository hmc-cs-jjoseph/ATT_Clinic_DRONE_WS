;; Auto-generated. Do not edit!


(when (boundp 'mailroom::ATSCsignal)
  (if (not (find-package "MAILROOM"))
    (make-package "MAILROOM"))
  (shadow 'ATSCsignal (find-package "MAILROOM")))
(unless (find-package "MAILROOM::ATSCSIGNAL")
  (make-package "MAILROOM::ATSCSIGNAL"))

(in-package "ROS")
;;//! \htmlinclude ATSCsignal.msg.html


(defclass mailroom::ATSCsignal
  :super ros::object
  :slots (_channel _SS _SNQ ))

(defmethod mailroom::ATSCsignal
  (:init
   (&key
    ((:channel __channel) 0)
    ((:SS __SS) 0)
    ((:SNQ __SNQ) 0)
    )
   (send-super :init)
   (setq _channel (round __channel))
   (setq _SS (round __SS))
   (setq _SNQ (round __SNQ))
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
    ;; uint8 _channel
    1
    ;; uint8 _SS
    1
    ;; uint8 _SNQ
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _channel
       (write-byte _channel s)
     ;; uint8 _SS
       (write-byte _SS s)
     ;; uint8 _SNQ
       (write-byte _SNQ s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _channel
     (setq _channel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SS
     (setq _SS (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SNQ
     (setq _SNQ (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mailroom::ATSCsignal :md5sum-) "063ee36b89b5191f33facb8c16b0feb7")
(setf (get mailroom::ATSCsignal :datatype-) "mailroom/ATSCsignal")
(setf (get mailroom::ATSCsignal :definition-)
      "uint8 channel
uint8 SS
uint8 SNQ

")



(provide :mailroom/ATSCsignal "063ee36b89b5191f33facb8c16b0feb7")


