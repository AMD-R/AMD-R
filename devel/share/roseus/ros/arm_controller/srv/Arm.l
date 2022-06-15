;; Auto-generated. Do not edit!


(when (boundp 'arm_controller::Arm)
  (if (not (find-package "ARM_CONTROLLER"))
    (make-package "ARM_CONTROLLER"))
  (shadow 'Arm (find-package "ARM_CONTROLLER")))
(unless (find-package "ARM_CONTROLLER::ARM")
  (make-package "ARM_CONTROLLER::ARM"))
(unless (find-package "ARM_CONTROLLER::ARMREQUEST")
  (make-package "ARM_CONTROLLER::ARMREQUEST"))
(unless (find-package "ARM_CONTROLLER::ARMRESPONSE")
  (make-package "ARM_CONTROLLER::ARMRESPONSE"))

(in-package "ROS")





(defclass arm_controller::ArmRequest
  :super ros::object
  :slots (_dist_x _dist_y _dist_z _rpm_y _rpm_z _cmd_x ))

(defmethod arm_controller::ArmRequest
  (:init
   (&key
    ((:dist_x __dist_x) 0.0)
    ((:dist_y __dist_y) 0.0)
    ((:dist_z __dist_z) 0.0)
    ((:rpm_y __rpm_y) 0)
    ((:rpm_z __rpm_z) 0)
    ((:cmd_x __cmd_x) nil)
    )
   (send-super :init)
   (setq _dist_x (float __dist_x))
   (setq _dist_y (float __dist_y))
   (setq _dist_z (float __dist_z))
   (setq _rpm_y (round __rpm_y))
   (setq _rpm_z (round __rpm_z))
   (setq _cmd_x __cmd_x)
   self)
  (:dist_x
   (&optional __dist_x)
   (if __dist_x (setq _dist_x __dist_x)) _dist_x)
  (:dist_y
   (&optional __dist_y)
   (if __dist_y (setq _dist_y __dist_y)) _dist_y)
  (:dist_z
   (&optional __dist_z)
   (if __dist_z (setq _dist_z __dist_z)) _dist_z)
  (:rpm_y
   (&optional __rpm_y)
   (if __rpm_y (setq _rpm_y __rpm_y)) _rpm_y)
  (:rpm_z
   (&optional __rpm_z)
   (if __rpm_z (setq _rpm_z __rpm_z)) _rpm_z)
  (:cmd_x
   (&optional (__cmd_x :null))
   (if (not (eq __cmd_x :null)) (setq _cmd_x __cmd_x)) _cmd_x)
  (:serialization-length
   ()
   (+
    ;; float32 _dist_x
    4
    ;; float32 _dist_y
    4
    ;; float32 _dist_z
    4
    ;; int16 _rpm_y
    2
    ;; int16 _rpm_z
    2
    ;; bool _cmd_x
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _dist_x
       (sys::poke _dist_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dist_y
       (sys::poke _dist_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dist_z
       (sys::poke _dist_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _rpm_y
       (write-word _rpm_y s)
     ;; int16 _rpm_z
       (write-word _rpm_z s)
     ;; bool _cmd_x
       (if _cmd_x (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _dist_x
     (setq _dist_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dist_y
     (setq _dist_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dist_z
     (setq _dist_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _rpm_y
     (setq _rpm_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rpm_z
     (setq _rpm_z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _cmd_x
     (setq _cmd_x (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass arm_controller::ArmResponse
  :super ros::object
  :slots (_resultArm _status ))

(defmethod arm_controller::ArmResponse
  (:init
   (&key
    ((:resultArm __resultArm) nil)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _resultArm __resultArm)
   (setq _status (round __status))
   self)
  (:resultArm
   (&optional (__resultArm :null))
   (if (not (eq __resultArm :null)) (setq _resultArm __resultArm)) _resultArm)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _resultArm
    1
    ;; int8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _resultArm
       (if _resultArm (write-byte -1 s) (write-byte 0 s))
     ;; int8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _resultArm
     (setq _resultArm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;;
   self)
  )

(defclass arm_controller::Arm
  :super ros::object
  :slots ())

(setf (get arm_controller::Arm :md5sum-) "7768e40cbfffda0fd377b4962bb94200")
(setf (get arm_controller::Arm :datatype-) "arm_controller/Arm")
(setf (get arm_controller::Arm :request) arm_controller::ArmRequest)
(setf (get arm_controller::Arm :response) arm_controller::ArmResponse)

(defmethod arm_controller::ArmRequest
  (:response () (instance arm_controller::ArmResponse :init)))

(setf (get arm_controller::ArmRequest :md5sum-) "7768e40cbfffda0fd377b4962bb94200")
(setf (get arm_controller::ArmRequest :datatype-) "arm_controller/ArmRequest")
(setf (get arm_controller::ArmRequest :definition-)
      "float32 dist_x
float32 dist_y
float32 dist_z
int16 rpm_y
int16 rpm_z
bool cmd_x
---
bool resultArm
int8 status



")

(setf (get arm_controller::ArmResponse :md5sum-) "7768e40cbfffda0fd377b4962bb94200")
(setf (get arm_controller::ArmResponse :datatype-) "arm_controller/ArmResponse")
(setf (get arm_controller::ArmResponse :definition-)
      "float32 dist_x
float32 dist_y
float32 dist_z
int16 rpm_y
int16 rpm_z
bool cmd_x
---
bool resultArm
int8 status



")



(provide :arm_controller/Arm "7768e40cbfffda0fd377b4962bb94200")


