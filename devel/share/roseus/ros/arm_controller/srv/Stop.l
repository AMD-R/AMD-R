;; Auto-generated. Do not edit!


(when (boundp 'arm_controller::Stop)
  (if (not (find-package "ARM_CONTROLLER"))
    (make-package "ARM_CONTROLLER"))
  (shadow 'Stop (find-package "ARM_CONTROLLER")))
(unless (find-package "ARM_CONTROLLER::STOP")
  (make-package "ARM_CONTROLLER::STOP"))
(unless (find-package "ARM_CONTROLLER::STOPREQUEST")
  (make-package "ARM_CONTROLLER::STOPREQUEST"))
(unless (find-package "ARM_CONTROLLER::STOPRESPONSE")
  (make-package "ARM_CONTROLLER::STOPRESPONSE"))

(in-package "ROS")





(defclass arm_controller::StopRequest
  :super ros::object
  :slots ())

(defmethod arm_controller::StopRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass arm_controller::StopResponse
  :super ros::object
  :slots ())

(defmethod arm_controller::StopResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass arm_controller::Stop
  :super ros::object
  :slots ())

(setf (get arm_controller::Stop :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get arm_controller::Stop :datatype-) "arm_controller/Stop")
(setf (get arm_controller::Stop :request) arm_controller::StopRequest)
(setf (get arm_controller::Stop :response) arm_controller::StopResponse)

(defmethod arm_controller::StopRequest
  (:response () (instance arm_controller::StopResponse :init)))

(setf (get arm_controller::StopRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get arm_controller::StopRequest :datatype-) "arm_controller/StopRequest")
(setf (get arm_controller::StopRequest :definition-)
      "---
")

(setf (get arm_controller::StopResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get arm_controller::StopResponse :datatype-) "arm_controller/StopResponse")
(setf (get arm_controller::StopResponse :definition-)
      "---
")



(provide :arm_controller/Stop "d41d8cd98f00b204e9800998ecf8427e")


