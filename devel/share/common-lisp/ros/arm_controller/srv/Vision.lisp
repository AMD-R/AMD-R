; Auto-generated. Do not edit!


(cl:in-package arm_controller-srv)


;//! \htmlinclude Vision-request.msg.html

(cl:defclass <Vision-request> (roslisp-msg-protocol:ros-message)
  ((resultVision
    :reader resultVision
    :initarg :resultVision
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Vision-request (<Vision-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vision-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vision-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_controller-srv:<Vision-request> is deprecated: use arm_controller-srv:Vision-request instead.")))

(cl:ensure-generic-function 'resultVision-val :lambda-list '(m))
(cl:defmethod resultVision-val ((m <Vision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:resultVision-val is deprecated.  Use arm_controller-srv:resultVision instead.")
  (resultVision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vision-request>) ostream)
  "Serializes a message object of type '<Vision-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'resultVision) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vision-request>) istream)
  "Deserializes a message object of type '<Vision-request>"
    (cl:setf (cl:slot-value msg 'resultVision) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vision-request>)))
  "Returns string type for a service object of type '<Vision-request>"
  "arm_controller/VisionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vision-request)))
  "Returns string type for a service object of type 'Vision-request"
  "arm_controller/VisionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vision-request>)))
  "Returns md5sum for a message object of type '<Vision-request>"
  "d0cf9def13deaa61d90a385578ef9f46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vision-request)))
  "Returns md5sum for a message object of type 'Vision-request"
  "d0cf9def13deaa61d90a385578ef9f46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vision-request>)))
  "Returns full string definition for message of type '<Vision-request>"
  (cl:format cl:nil "bool resultVision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vision-request)))
  "Returns full string definition for message of type 'Vision-request"
  (cl:format cl:nil "bool resultVision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vision-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vision-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Vision-request
    (cl:cons ':resultVision (resultVision msg))
))
;//! \htmlinclude Vision-response.msg.html

(cl:defclass <Vision-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:boolean
    :initform cl:nil)
   (isActive
    :reader isActive
    :initarg :isActive
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Vision-response (<Vision-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vision-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vision-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_controller-srv:<Vision-response> is deprecated: use arm_controller-srv:Vision-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Vision-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:x-val is deprecated.  Use arm_controller-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Vision-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:y-val is deprecated.  Use arm_controller-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Vision-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:z-val is deprecated.  Use arm_controller-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'isActive-val :lambda-list '(m))
(cl:defmethod isActive-val ((m <Vision-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:isActive-val is deprecated.  Use arm_controller-srv:isActive instead.")
  (isActive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vision-response>) ostream)
  "Serializes a message object of type '<Vision-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'z) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isActive) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vision-response>) istream)
  "Deserializes a message object of type '<Vision-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'z) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isActive) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vision-response>)))
  "Returns string type for a service object of type '<Vision-response>"
  "arm_controller/VisionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vision-response)))
  "Returns string type for a service object of type 'Vision-response"
  "arm_controller/VisionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vision-response>)))
  "Returns md5sum for a message object of type '<Vision-response>"
  "d0cf9def13deaa61d90a385578ef9f46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vision-response)))
  "Returns md5sum for a message object of type 'Vision-response"
  "d0cf9def13deaa61d90a385578ef9f46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vision-response>)))
  "Returns full string definition for message of type '<Vision-response>"
  (cl:format cl:nil "float64 x~%float64 y~%bool z~%bool isActive~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vision-response)))
  "Returns full string definition for message of type 'Vision-response"
  (cl:format cl:nil "float64 x~%float64 y~%bool z~%bool isActive~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vision-response>))
  (cl:+ 0
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vision-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Vision-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':isActive (isActive msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Vision)))
  'Vision-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Vision)))
  'Vision-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vision)))
  "Returns string type for a service object of type '<Vision>"
  "arm_controller/Vision")