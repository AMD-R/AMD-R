;; Auto-generated. Do not edit!


(when (boundp 'arm_controller::HMI)
  (if (not (find-package "ARM_CONTROLLER"))
    (make-package "ARM_CONTROLLER"))
  (shadow 'HMI (find-package "ARM_CONTROLLER")))
(unless (find-package "ARM_CONTROLLER::HMI")
  (make-package "ARM_CONTROLLER::HMI"))
(unless (find-package "ARM_CONTROLLER::HMIREQUEST")
  (make-package "ARM_CONTROLLER::HMIREQUEST"))
(unless (find-package "ARM_CONTROLLER::HMIRESPONSE")
  (make-package "ARM_CONTROLLER::HMIRESPONSE"))

(in-package "ROS")





(defclass arm_controller::HMIRequest
  :super ros::object
  :slots (_resultHMI ))

(defmethod arm_controller::HMIRequest
  (:init
   (&key
    ((:resultHMI __resultHMI) nil)
    )
   (send-super :init)
   (setq _resultHMI __resultHMI)
   self)
  (:resultHMI
   (&optional (__resultHMI :null))
   (if (not (eq __resultHMI :null)) (setq _resultHMI __resultHMI)) _resultHMI)
  (:serialization-length
   ()
   (+
    ;; bool _resultHMI
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _resultHMI
       (if _resultHMI (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _resultHMI
     (setq _resultHMI (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass arm_controller::HMIResponse
  :super ros::object
  :slots (_codeHMI ))

(defmethod arm_controller::HMIResponse
  (:init
   (&key
    ((:codeHMI __codeHMI) 0)
    )
   (send-super :init)
   (setq _codeHMI (round __codeHMI))
   self)
  (:codeHMI
   (&optional __codeHMI)
   (if __codeHMI (setq _codeHMI __codeHMI)) _codeHMI)
  (:serialization-length
   ()
   (+
    ;; int64 _codeHMI
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _codeHMI
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _codeHMI (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _codeHMI) (= (length (_codeHMI . bv)) 2)) ;; bignum
              (write-long (ash (elt (_codeHMI . bv) 0) 0) s)
              (write-long (ash (elt (_codeHMI . bv) 1) -1) s))
             ((and (class _codeHMI) (= (length (_codeHMI . bv)) 1)) ;; big1
              (write-long (elt (_codeHMI . bv) 0) s)
              (write-long (if (>= _codeHMI 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _codeHMI s)(write-long (if (>= _codeHMI 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _codeHMI
#+(or :alpha :irix6 :x86_64)
      (setf _codeHMI (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _codeHMI (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass arm_controller::HMI
  :super ros::object
  :slots ())

(setf (get arm_controller::HMI :md5sum-) "cb52c7deab716044e28d7b42e43ad1b3")
(setf (get arm_controller::HMI :datatype-) "arm_controller/HMI")
(setf (get arm_controller::HMI :request) arm_controller::HMIRequest)
(setf (get arm_controller::HMI :response) arm_controller::HMIResponse)

(defmethod arm_controller::HMIRequest
  (:response () (instance arm_controller::HMIResponse :init)))

(setf (get arm_controller::HMIRequest :md5sum-) "cb52c7deab716044e28d7b42e43ad1b3")
(setf (get arm_controller::HMIRequest :datatype-) "arm_controller/HMIRequest")
(setf (get arm_controller::HMIRequest :definition-)
      "bool resultHMI
---
int64 codeHMI


")

(setf (get arm_controller::HMIResponse :md5sum-) "cb52c7deab716044e28d7b42e43ad1b3")
(setf (get arm_controller::HMIResponse :datatype-) "arm_controller/HMIResponse")
(setf (get arm_controller::HMIResponse :definition-)
      "bool resultHMI
---
int64 codeHMI


")



(provide :arm_controller/HMI "cb52c7deab716044e28d7b42e43ad1b3")


