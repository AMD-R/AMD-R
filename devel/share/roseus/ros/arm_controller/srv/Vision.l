;; Auto-generated. Do not edit!


(when (boundp 'arm_controller::Vision)
  (if (not (find-package "ARM_CONTROLLER"))
    (make-package "ARM_CONTROLLER"))
  (shadow 'Vision (find-package "ARM_CONTROLLER")))
(unless (find-package "ARM_CONTROLLER::VISION")
  (make-package "ARM_CONTROLLER::VISION"))
(unless (find-package "ARM_CONTROLLER::VISIONREQUEST")
  (make-package "ARM_CONTROLLER::VISIONREQUEST"))
(unless (find-package "ARM_CONTROLLER::VISIONRESPONSE")
  (make-package "ARM_CONTROLLER::VISIONRESPONSE"))

(in-package "ROS")





(defclass arm_controller::VisionRequest
  :super ros::object
  :slots (_resultVision ))

(defmethod arm_controller::VisionRequest
  (:init
   (&key
    ((:resultVision __resultVision) nil)
    )
   (send-super :init)
   (setq _resultVision __resultVision)
   self)
  (:resultVision
   (&optional (__resultVision :null))
   (if (not (eq __resultVision :null)) (setq _resultVision __resultVision)) _resultVision)
  (:serialization-length
   ()
   (+
    ;; bool _resultVision
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _resultVision
       (if _resultVision (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _resultVision
     (setq _resultVision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass arm_controller::VisionResponse
  :super ros::object
  :slots (_x _y _z _isActive ))

(defmethod arm_controller::VisionResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) nil)
    ((:isActive __isActive) nil)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z __z)
   (setq _isActive __isActive)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional (__z :null))
   (if (not (eq __z :null)) (setq _z __z)) _z)
  (:isActive
   (&optional (__isActive :null))
   (if (not (eq __isActive :null)) (setq _isActive __isActive)) _isActive)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; bool _z
    1
    ;; bool _isActive
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _z
       (if _z (write-byte -1 s) (write-byte 0 s))
     ;; bool _isActive
       (if _isActive (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _z
     (setq _z (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isActive
     (setq _isActive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass arm_controller::Vision
  :super ros::object
  :slots ())

(setf (get arm_controller::Vision :md5sum-) "d0cf9def13deaa61d90a385578ef9f46")
(setf (get arm_controller::Vision :datatype-) "arm_controller/Vision")
(setf (get arm_controller::Vision :request) arm_controller::VisionRequest)
(setf (get arm_controller::Vision :response) arm_controller::VisionResponse)

(defmethod arm_controller::VisionRequest
  (:response () (instance arm_controller::VisionResponse :init)))

(setf (get arm_controller::VisionRequest :md5sum-) "d0cf9def13deaa61d90a385578ef9f46")
(setf (get arm_controller::VisionRequest :datatype-) "arm_controller/VisionRequest")
(setf (get arm_controller::VisionRequest :definition-)
      "bool resultVision
---
float64 x
float64 y
bool z
bool isActive
")

(setf (get arm_controller::VisionResponse :md5sum-) "d0cf9def13deaa61d90a385578ef9f46")
(setf (get arm_controller::VisionResponse :datatype-) "arm_controller/VisionResponse")
(setf (get arm_controller::VisionResponse :definition-)
      "bool resultVision
---
float64 x
float64 y
bool z
bool isActive
")



(provide :arm_controller/Vision "d0cf9def13deaa61d90a385578ef9f46")


