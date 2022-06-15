;; Auto-generated. Do not edit!


(when (boundp 'arm_controller::Nav)
  (if (not (find-package "ARM_CONTROLLER"))
    (make-package "ARM_CONTROLLER"))
  (shadow 'Nav (find-package "ARM_CONTROLLER")))
(unless (find-package "ARM_CONTROLLER::NAV")
  (make-package "ARM_CONTROLLER::NAV"))
(unless (find-package "ARM_CONTROLLER::NAVREQUEST")
  (make-package "ARM_CONTROLLER::NAVREQUEST"))
(unless (find-package "ARM_CONTROLLER::NAVRESPONSE")
  (make-package "ARM_CONTROLLER::NAVRESPONSE"))

(in-package "ROS")





(defclass arm_controller::NavRequest
  :super ros::object
  :slots (_resultNav ))

(defmethod arm_controller::NavRequest
  (:init
   (&key
    ((:resultNav __resultNav) nil)
    )
   (send-super :init)
   (setq _resultNav __resultNav)
   self)
  (:resultNav
   (&optional (__resultNav :null))
   (if (not (eq __resultNav :null)) (setq _resultNav __resultNav)) _resultNav)
  (:serialization-length
   ()
   (+
    ;; bool _resultNav
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _resultNav
       (if _resultNav (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _resultNav
     (setq _resultNav (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass arm_controller::NavResponse
  :super ros::object
  :slots (_location ))

(defmethod arm_controller::NavResponse
  (:init
   (&key
    ((:location __location) 0)
    )
   (send-super :init)
   (setq _location (round __location))
   self)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:serialization-length
   ()
   (+
    ;; int64 _location
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _location
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _location (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _location) (= (length (_location . bv)) 2)) ;; bignum
              (write-long (ash (elt (_location . bv) 0) 0) s)
              (write-long (ash (elt (_location . bv) 1) -1) s))
             ((and (class _location) (= (length (_location . bv)) 1)) ;; big1
              (write-long (elt (_location . bv) 0) s)
              (write-long (if (>= _location 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _location s)(write-long (if (>= _location 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _location
#+(or :alpha :irix6 :x86_64)
      (setf _location (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _location (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass arm_controller::Nav
  :super ros::object
  :slots ())

(setf (get arm_controller::Nav :md5sum-) "aee342bdb1678c75b6e000ad4c3a77bf")
(setf (get arm_controller::Nav :datatype-) "arm_controller/Nav")
(setf (get arm_controller::Nav :request) arm_controller::NavRequest)
(setf (get arm_controller::Nav :response) arm_controller::NavResponse)

(defmethod arm_controller::NavRequest
  (:response () (instance arm_controller::NavResponse :init)))

(setf (get arm_controller::NavRequest :md5sum-) "aee342bdb1678c75b6e000ad4c3a77bf")
(setf (get arm_controller::NavRequest :datatype-) "arm_controller/NavRequest")
(setf (get arm_controller::NavRequest :definition-)
      "bool resultNav
---
int64 location


")

(setf (get arm_controller::NavResponse :md5sum-) "aee342bdb1678c75b6e000ad4c3a77bf")
(setf (get arm_controller::NavResponse :datatype-) "arm_controller/NavResponse")
(setf (get arm_controller::NavResponse :definition-)
      "bool resultNav
---
int64 location


")



(provide :arm_controller/Nav "aee342bdb1678c75b6e000ad4c3a77bf")


