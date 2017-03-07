
(cl:in-package :asdf)

(defsystem "tuner-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :mailroom-msg
)
  :components ((:file "_package")
    (:file "GetSignalStatus" :depends-on ("_package_GetSignalStatus"))
    (:file "_package_GetSignalStatus" :depends-on ("_package"))
  ))