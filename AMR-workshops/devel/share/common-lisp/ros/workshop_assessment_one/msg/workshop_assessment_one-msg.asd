
(cl:in-package :asdf)

(defsystem "workshop_assessment_one-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Belief" :depends-on ("_package_Belief"))
    (:file "_package_Belief" :depends-on ("_package"))
    (:file "Update" :depends-on ("_package_Update"))
    (:file "_package_Update" :depends-on ("_package"))
  ))