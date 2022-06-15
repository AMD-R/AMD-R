;; Auto-generated. Do not edit!


(when (boundp 'arm_controller::buttonStatus)
  (if (not (find-package "ARM_CONTROLLER"))
    (make-package "ARM_CONTROLLER"))
  (shadow 'buttonStatus (find-package "ARM_CONTROLLER")))
(unless (find-package "ARM_CONTROLLER::BUTTONSTATUS")
  (make-package "ARM_CONTROLLER::BUTTONSTATUS"))
(unless (find-package "ARM_CONTROLLER::BUTTONSTATUSREQUEST")
  (make-package "ARM_CONTROLLER::BUTTONSTATUSREQUEST"))
(unless (find-package "ARM_CONTROLLER::BUTTONSTATUSRESPONSE")
  (make-package "ARM_CONTROLLER::BUTTONSTATUSRESPONSE"))

(in-package "ROS")





(defclass arm_controller::buttonStatusRequest
  :super ros::object
  :slots (_resultButton ))

(defmethod arm_controller::buttonStatusRequest
  (:init
   (&key
    ((:resultButton __resultButton) nil)
    )
   (send-super :init)
   (setq _resultButton __resultButton)
   self)
  (:resultButton
   (&optional (__resultButton :null))
   (if (not (eq __resultButton :null)) (setq _resultButton __resultButton)) _resultButton)
  (:serialization-length
   ()
   (+
    ;; bool _resultButton
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _resultButton
       (if _resultButton (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _resultButton
     (setq _resultButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass arm_controller::buttonStatusResponse
  :super ros::object
  :slots (_isActive ))

(defmethod arm_controller::buttonStatusResponse
  (:init
   (&key
    ((:isActive __isActive) nil)
    )
   (send-super :init)
   (setq _isActive __isActive)
   self)
  (:isActive
   (&optional (__isActive :null))
   (if (not (eq __isActive :null)) (setq _isActive __isActive)) _isActive)
  (:serialization-length
   ()
   (+
    ;; bool _isActive
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isActive
       (if _isActive (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isActive
     (setq _isActive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass arm_controller::buttonStatus
  :super ros::object
  :slots ())

(setf (get arm_controller::buttonStatus :md5sum-) "96a1c76b0629b71c9a214609600d9e41")
(setf (get arm_controller::buttonStatus :datatype-) "arm_controller/buttonStatus")
(setf (get arm_controller::buttonStatus :request) arm_controller::buttonStatusRequest)
(setf (get arm_controller::buttonStatus :response) arm_controller::buttonStatusResponse)

(defmethod arm_controller::buttonStatusRequest
  (:response () (instance arm_controller::buttonStatusResponse :init)))

(setf (get arm_controller::buttonStatusRequest :md5sum-) "96a1c76b0629b71c9a214609600d9e41")
(setf (get arm_controller::buttonStatusRequest :datatype-) "arm_controller/buttonStatusRequest")
(setf (get arm_controller::buttonStatusRequest :definition-)
      "bool resultButton
---
bool isActive

")

(setf (get arm_controller::buttonStatusResponse :md5sum-) "96a1c76b0629b71c9a214609600d9e41")
(setf (get arm_controller::buttonStatusResponse :datatype-) "arm_controller/buttonStatusResponse")
(setf (get arm_controller::buttonStatusResponse :definition-)
      "bool resultButton
---
bool isActive

")



(provide :arm_controller/buttonStatus "96a1c76b0629b71c9a214609600d9e41")


