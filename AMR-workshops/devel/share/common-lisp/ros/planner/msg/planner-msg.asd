
(cl:in-package :asdf)

(defsystem "planner-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "Query" :depends-on ("_package_Query"))
    (:file "_package_Query" :depends-on ("_package"))
  ))