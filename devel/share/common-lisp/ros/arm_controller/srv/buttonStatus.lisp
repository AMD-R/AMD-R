; Auto-generated. Do not edit!


(cl:in-package arm_controller-srv)


;//! \htmlinclude buttonStatus-request.msg.html

(cl:defclass <buttonStatus-request> (roslisp-msg-protocol:ros-message)
  ((resultButton
    :reader resultButton
    :initarg :resultButton
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass buttonStatus-request (<buttonStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <buttonStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'buttonStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_controller-srv:<buttonStatus-request> is deprecated: use arm_controller-srv:buttonStatus-request instead.")))

(cl:ensure-generic-function 'resultButton-val :lambda-list '(m))
(cl:defmethod resultButton-val ((m <buttonStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:resultButton-val is deprecated.  Use arm_controller-srv:resultButton instead.")
  (resultButton m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <buttonStatus-request>) ostream)
  "Serializes a message object of type '<buttonStatus-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'resultButton) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <buttonStatus-request>) istream)
  "Deserializes a message object of type '<buttonStatus-request>"
    (cl:setf (cl:slot-value msg 'resultButton) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<buttonStatus-request>)))
  "Returns string type for a service object of type '<buttonStatus-request>"
  "arm_controller/buttonStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'buttonStatus-request)))
  "Returns string type for a service object of type 'buttonStatus-request"
  "arm_controller/buttonStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<buttonStatus-request>)))
  "Returns md5sum for a message object of type '<buttonStatus-request>"
  "96a1c76b0629b71c9a214609600d9e41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'buttonStatus-request)))
  "Returns md5sum for a message object of type 'buttonStatus-request"
  "96a1c76b0629b71c9a214609600d9e41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<buttonStatus-request>)))
  "Returns full string definition for message of type '<buttonStatus-request>"
  (cl:format cl:nil "bool resultButton~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'buttonStatus-request)))
  "Returns full string definition for message of type 'buttonStatus-request"
  (cl:format cl:nil "bool resultButton~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <buttonStatus-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <buttonStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'buttonStatus-request
    (cl:cons ':resultButton (resultButton msg))
))
;//! \htmlinclude buttonStatus-response.msg.html

(cl:defclass <buttonStatus-response> (roslisp-msg-protocol:ros-message)
  ((isActive
    :reader isActive
    :initarg :isActive
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass buttonStatus-response (<buttonStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <buttonStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'buttonStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_controller-srv:<buttonStatus-response> is deprecated: use arm_controller-srv:buttonStatus-response instead.")))

(cl:ensure-generic-function 'isActive-val :lambda-list '(m))
(cl:defmethod isActive-val ((m <buttonStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:isActive-val is deprecated.  Use arm_controller-srv:isActive instead.")
  (isActive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <buttonStatus-response>) ostream)
  "Serializes a message object of type '<buttonStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isActive) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <buttonStatus-response>) istream)
  "Deserializes a message object of type '<buttonStatus-response>"
    (cl:setf (cl:slot-value msg 'isActive) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<buttonStatus-response>)))
  "Returns string type for a service object of type '<buttonStatus-response>"
  "arm_controller/buttonStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'buttonStatus-response)))
  "Returns string type for a service object of type 'buttonStatus-response"
  "arm_controller/buttonStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<buttonStatus-response>)))
  "Returns md5sum for a message object of type '<buttonStatus-response>"
  "96a1c76b0629b71c9a214609600d9e41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'buttonStatus-response)))
  "Returns md5sum for a message object of type 'buttonStatus-response"
  "96a1c76b0629b71c9a214609600d9e41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<buttonStatus-response>)))
  "Returns full string definition for message of type '<buttonStatus-response>"
  (cl:format cl:nil "bool isActive~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'buttonStatus-response)))
  "Returns full string definition for message of type 'buttonStatus-response"
  (cl:format cl:nil "bool isActive~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <buttonStatus-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <buttonStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'buttonStatus-response
    (cl:cons ':isActive (isActive msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'buttonStatus)))
  'buttonStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'buttonStatus)))
  'buttonStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'buttonStatus)))
  "Returns string type for a service object of type '<buttonStatus>"
  "arm_controller/buttonStatus")