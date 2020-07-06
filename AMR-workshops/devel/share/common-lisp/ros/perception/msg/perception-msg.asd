
(cl:in-package :asdf)

(defsystem "perception-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Landmark" :depends-on ("_package_Landmark"))
    (:file "_package_Landmark" :depends-on ("_package"))
    (:file "Landmarks" :depends-on ("_package_Landmarks"))
    (:file "_package_Landmarks" :depends-on ("_package"))
    (:file "Observation" :depends-on ("_package_Observation"))
    (:file "_package_Observation" :depends-on ("_package"))
    (:file "Observations" :depends-on ("_package_Observations"))
    (:file "_package_Observations" :depends-on ("_package"))
  ))