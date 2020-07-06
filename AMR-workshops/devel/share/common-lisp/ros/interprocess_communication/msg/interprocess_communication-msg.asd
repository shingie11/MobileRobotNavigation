
(cl:in-package :asdf)

(defsystem "interprocess_communication-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Update" :depends-on ("_package_Update"))
    (:file "_package_Update" :depends-on ("_package"))
  ))