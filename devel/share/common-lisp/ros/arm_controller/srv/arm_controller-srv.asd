
(cl:in-package :asdf)

(defsystem "arm_controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Arm" :depends-on ("_package_Arm"))
    (:file "_package_Arm" :depends-on ("_package"))
    (:file "HMI" :depends-on ("_package_HMI"))
    (:file "_package_HMI" :depends-on ("_package"))
    (:file "Nav" :depends-on ("_package_Nav"))
    (:file "_package_Nav" :depends-on ("_package"))
    (:file "Stop" :depends-on ("_package_Stop"))
    (:file "_package_Stop" :depends-on ("_package"))
    (:file "Vision" :depends-on ("_package_Vision"))
    (:file "_package_Vision" :depends-on ("_package"))
    (:file "buttonStatus" :depends-on ("_package_buttonStatus"))
    (:file "_package_buttonStatus" :depends-on ("_package"))
  ))