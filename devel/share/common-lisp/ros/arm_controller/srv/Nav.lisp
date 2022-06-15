; Auto-generated. Do not edit!


(cl:in-package arm_controller-srv)


;//! \htmlinclude Nav-request.msg.html

(cl:defclass <Nav-request> (roslisp-msg-protocol:ros-message)
  ((resultNav
    :reader resultNav
    :initarg :resultNav
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Nav-request (<Nav-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Nav-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Nav-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_controller-srv:<Nav-request> is deprecated: use arm_controller-srv:Nav-request instead.")))

(cl:ensure-generic-function 'resultNav-val :lambda-list '(m))
(cl:defmethod resultNav-val ((m <Nav-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:resultNav-val is deprecated.  Use arm_controller-srv:resultNav instead.")
  (resultNav m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Nav-request>) ostream)
  "Serializes a message object of type '<Nav-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'resultNav) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Nav-request>) istream)
  "Deserializes a message object of type '<Nav-request>"
    (cl:setf (cl:slot-value msg 'resultNav) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Nav-request>)))
  "Returns string type for a service object of type '<Nav-request>"
  "arm_controller/NavRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Nav-request)))
  "Returns string type for a service object of type 'Nav-request"
  "arm_controller/NavRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Nav-request>)))
  "Returns md5sum for a message object of type '<Nav-request>"
  "aee342bdb1678c75b6e000ad4c3a77bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Nav-request)))
  "Returns md5sum for a message object of type 'Nav-request"
  "aee342bdb1678c75b6e000ad4c3a77bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Nav-request>)))
  "Returns full string definition for message of type '<Nav-request>"
  (cl:format cl:nil "bool resultNav~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Nav-request)))
  "Returns full string definition for message of type 'Nav-request"
  (cl:format cl:nil "bool resultNav~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Nav-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Nav-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Nav-request
    (cl:cons ':resultNav (resultNav msg))
))
;//! \htmlinclude Nav-response.msg.html

(cl:defclass <Nav-response> (roslisp-msg-protocol:ros-message)
  ((location
    :reader location
    :initarg :location
    :type cl:integer
    :initform 0))
)

(cl:defclass Nav-response (<Nav-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Nav-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Nav-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_controller-srv:<Nav-response> is deprecated: use arm_controller-srv:Nav-response instead.")))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <Nav-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:location-val is deprecated.  Use arm_controller-srv:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Nav-response>) ostream)
  "Serializes a message object of type '<Nav-response>"
  (cl:let* ((signed (cl:slot-value msg 'location)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Nav-response>) istream)
  "Deserializes a message object of type '<Nav-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Nav-response>)))
  "Returns string type for a service object of type '<Nav-response>"
  "arm_controller/NavResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Nav-response)))
  "Returns string type for a service object of type 'Nav-response"
  "arm_controller/NavResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Nav-response>)))
  "Returns md5sum for a message object of type '<Nav-response>"
  "aee342bdb1678c75b6e000ad4c3a77bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Nav-response)))
  "Returns md5sum for a message object of type 'Nav-response"
  "aee342bdb1678c75b6e000ad4c3a77bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Nav-response>)))
  "Returns full string definition for message of type '<Nav-response>"
  (cl:format cl:nil "int64 location~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Nav-response)))
  "Returns full string definition for message of type 'Nav-response"
  (cl:format cl:nil "int64 location~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Nav-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Nav-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Nav-response
    (cl:cons ':location (location msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Nav)))
  'Nav-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Nav)))
  'Nav-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Nav)))
  "Returns string type for a service object of type '<Nav>"
  "arm_controller/Nav")