; Auto-generated. Do not edit!


(cl:in-package arm_controller-srv)


;//! \htmlinclude HMI-request.msg.html

(cl:defclass <HMI-request> (roslisp-msg-protocol:ros-message)
  ((resultHMI
    :reader resultHMI
    :initarg :resultHMI
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HMI-request (<HMI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_controller-srv:<HMI-request> is deprecated: use arm_controller-srv:HMI-request instead.")))

(cl:ensure-generic-function 'resultHMI-val :lambda-list '(m))
(cl:defmethod resultHMI-val ((m <HMI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:resultHMI-val is deprecated.  Use arm_controller-srv:resultHMI instead.")
  (resultHMI m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMI-request>) ostream)
  "Serializes a message object of type '<HMI-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'resultHMI) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMI-request>) istream)
  "Deserializes a message object of type '<HMI-request>"
    (cl:setf (cl:slot-value msg 'resultHMI) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMI-request>)))
  "Returns string type for a service object of type '<HMI-request>"
  "arm_controller/HMIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMI-request)))
  "Returns string type for a service object of type 'HMI-request"
  "arm_controller/HMIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMI-request>)))
  "Returns md5sum for a message object of type '<HMI-request>"
  "cb52c7deab716044e28d7b42e43ad1b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMI-request)))
  "Returns md5sum for a message object of type 'HMI-request"
  "cb52c7deab716044e28d7b42e43ad1b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMI-request>)))
  "Returns full string definition for message of type '<HMI-request>"
  (cl:format cl:nil "bool resultHMI~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMI-request)))
  "Returns full string definition for message of type 'HMI-request"
  (cl:format cl:nil "bool resultHMI~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMI-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HMI-request
    (cl:cons ':resultHMI (resultHMI msg))
))
;//! \htmlinclude HMI-response.msg.html

(cl:defclass <HMI-response> (roslisp-msg-protocol:ros-message)
  ((codeHMI
    :reader codeHMI
    :initarg :codeHMI
    :type cl:integer
    :initform 0))
)

(cl:defclass HMI-response (<HMI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_controller-srv:<HMI-response> is deprecated: use arm_controller-srv:HMI-response instead.")))

(cl:ensure-generic-function 'codeHMI-val :lambda-list '(m))
(cl:defmethod codeHMI-val ((m <HMI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:codeHMI-val is deprecated.  Use arm_controller-srv:codeHMI instead.")
  (codeHMI m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMI-response>) ostream)
  "Serializes a message object of type '<HMI-response>"
  (cl:let* ((signed (cl:slot-value msg 'codeHMI)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMI-response>) istream)
  "Deserializes a message object of type '<HMI-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'codeHMI) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMI-response>)))
  "Returns string type for a service object of type '<HMI-response>"
  "arm_controller/HMIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMI-response)))
  "Returns string type for a service object of type 'HMI-response"
  "arm_controller/HMIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMI-response>)))
  "Returns md5sum for a message object of type '<HMI-response>"
  "cb52c7deab716044e28d7b42e43ad1b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMI-response)))
  "Returns md5sum for a message object of type 'HMI-response"
  "cb52c7deab716044e28d7b42e43ad1b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMI-response>)))
  "Returns full string definition for message of type '<HMI-response>"
  (cl:format cl:nil "int64 codeHMI~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMI-response)))
  "Returns full string definition for message of type 'HMI-response"
  (cl:format cl:nil "int64 codeHMI~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMI-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HMI-response
    (cl:cons ':codeHMI (codeHMI msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HMI)))
  'HMI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HMI)))
  'HMI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMI)))
  "Returns string type for a service object of type '<HMI>"
  "arm_controller/HMI")