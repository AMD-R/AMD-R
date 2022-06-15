; Auto-generated. Do not edit!


(cl:in-package arm_controller-srv)


;//! \htmlinclude Stop-request.msg.html

(cl:defclass <Stop-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Stop-request (<Stop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_controller-srv:<Stop-request> is deprecated: use arm_controller-srv:Stop-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stop-request>) ostream)
  "Serializes a message object of type '<Stop-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stop-request>) istream)
  "Deserializes a message object of type '<Stop-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stop-request>)))
  "Returns string type for a service object of type '<Stop-request>"
  "arm_controller/StopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stop-request)))
  "Returns string type for a service object of type 'Stop-request"
  "arm_controller/StopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stop-request>)))
  "Returns md5sum for a message object of type '<Stop-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stop-request)))
  "Returns md5sum for a message object of type 'Stop-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stop-request>)))
  "Returns full string definition for message of type '<Stop-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stop-request)))
  "Returns full string definition for message of type 'Stop-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stop-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Stop-request
))
;//! \htmlinclude Stop-response.msg.html

(cl:defclass <Stop-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Stop-response (<Stop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_controller-srv:<Stop-response> is deprecated: use arm_controller-srv:Stop-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stop-response>) ostream)
  "Serializes a message object of type '<Stop-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stop-response>) istream)
  "Deserializes a message object of type '<Stop-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stop-response>)))
  "Returns string type for a service object of type '<Stop-response>"
  "arm_controller/StopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stop-response)))
  "Returns string type for a service object of type 'Stop-response"
  "arm_controller/StopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stop-response>)))
  "Returns md5sum for a message object of type '<Stop-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stop-response)))
  "Returns md5sum for a message object of type 'Stop-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stop-response>)))
  "Returns full string definition for message of type '<Stop-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stop-response)))
  "Returns full string definition for message of type 'Stop-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stop-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Stop-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Stop)))
  'Stop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Stop)))
  'Stop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stop)))
  "Returns string type for a service object of type '<Stop>"
  "arm_controller/Stop")