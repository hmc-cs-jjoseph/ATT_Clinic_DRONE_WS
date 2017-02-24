
(cl:in-package :asdf)

(defsystem "mailroom-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ATSCsignal" :depends-on ("_package_ATSCsignal"))
    (:file "_package_ATSCsignal" :depends-on ("_package"))
    (:file "drone_cmd" :depends-on ("_package_drone_cmd"))
    (:file "_package_drone_cmd" :depends-on ("_package"))
    (:file "drone_status" :depends-on ("_package_drone_status"))
    (:file "_package_drone_status" :depends-on ("_package"))
    (:file "drone_telemetry" :depends-on ("_package_drone_telemetry"))
    (:file "_package_drone_telemetry" :depends-on ("_package"))
  ))