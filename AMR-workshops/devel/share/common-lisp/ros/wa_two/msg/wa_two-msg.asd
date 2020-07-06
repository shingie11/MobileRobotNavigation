
(cl:in-package :asdf)

(defsystem "wa_two-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Belief" :depends-on ("_package_Belief"))
    (:file "_package_Belief" :depends-on ("_package"))
    (:file "Model" :depends-on ("_package_Model"))
    (:file "_package_Model" :depends-on ("_package"))
    (:file "Update" :depends-on ("_package_Update"))
    (:file "_package_Update" :depends-on ("_package"))
  ))