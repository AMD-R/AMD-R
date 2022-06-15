; Auto-generated. Do not edit!


(cl:in-package arm_controller-srv)


;//! \htmlinclude Arm-request.msg.html

(cl:defclass <Arm-request> (roslisp-msg-protocol:ros-message)
  ((dist_x
    :reader dist_x
    :initarg :dist_x
    :type cl:float
    :initform 0.0)
   (dist_y
    :reader dist_y
    :initarg :dist_y
    :type cl:float
    :initform 0.0)
   (dist_z
    :reader dist_z
    :initarg :dist_z
    :type cl:float
    :initform 0.0)
   (rpm_y
    :reader rpm_y
    :initarg :rpm_y
    :type cl:fixnum
    :initform 0)
   (rpm_z
    :reader rpm_z
    :initarg :rpm_z
    :type cl:fixnum
    :initform 0)
   (cmd_x
    :reader cmd_x
    :initarg :cmd_x
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Arm-request (<Arm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Arm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Arm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_controller-srv:<Arm-request> is deprecated: use arm_controller-srv:Arm-request instead.")))

(cl:ensure-generic-function 'dist_x-val :lambda-list '(m))
(cl:defmethod dist_x-val ((m <Arm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:dist_x-val is deprecated.  Use arm_controller-srv:dist_x instead.")
  (dist_x m))

(cl:ensure-generic-function 'dist_y-val :lambda-list '(m))
(cl:defmethod dist_y-val ((m <Arm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:dist_y-val is deprecated.  Use arm_controller-srv:dist_y instead.")
  (dist_y m))

(cl:ensure-generic-function 'dist_z-val :lambda-list '(m))
(cl:defmethod dist_z-val ((m <Arm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:dist_z-val is deprecated.  Use arm_controller-srv:dist_z instead.")
  (dist_z m))

(cl:ensure-generic-function 'rpm_y-val :lambda-list '(m))
(cl:defmethod rpm_y-val ((m <Arm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:rpm_y-val is deprecated.  Use arm_controller-srv:rpm_y instead.")
  (rpm_y m))

(cl:ensure-generic-function 'rpm_z-val :lambda-list '(m))
(cl:defmethod rpm_z-val ((m <Arm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:rpm_z-val is deprecated.  Use arm_controller-srv:rpm_z instead.")
  (rpm_z m))

(cl:ensure-generic-function 'cmd_x-val :lambda-list '(m))
(cl:defmethod cmd_x-val ((m <Arm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:cmd_x-val is deprecated.  Use arm_controller-srv:cmd_x instead.")
  (cmd_x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Arm-request>) ostream)
  "Serializes a message object of type '<Arm-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'rpm_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rpm_z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cmd_x) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Arm-request>) istream)
  "Deserializes a message object of type '<Arm-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rpm_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rpm_z) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'cmd_x) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Arm-request>)))
  "Returns string type for a service object of type '<Arm-request>"
  "arm_controller/ArmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm-request)))
  "Returns string type for a service object of type 'Arm-request"
  "arm_controller/ArmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Arm-request>)))
  "Returns md5sum for a message object of type '<Arm-request>"
  "7768e40cbfffda0fd377b4962bb94200")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Arm-request)))
  "Returns md5sum for a message object of type 'Arm-request"
  "7768e40cbfffda0fd377b4962bb94200")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Arm-request>)))
  "Returns full string definition for message of type '<Arm-request>"
  (cl:format cl:nil "float32 dist_x~%float32 dist_y~%float32 dist_z~%int16 rpm_y~%int16 rpm_z~%bool cmd_x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Arm-request)))
  "Returns full string definition for message of type 'Arm-request"
  (cl:format cl:nil "float32 dist_x~%float32 dist_y~%float32 dist_z~%int16 rpm_y~%int16 rpm_z~%bool cmd_x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Arm-request>))
  (cl:+ 0
     4
     4
     4
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Arm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Arm-request
    (cl:cons ':dist_x (dist_x msg))
    (cl:cons ':dist_y (dist_y msg))
    (cl:cons ':dist_z (dist_z msg))
    (cl:cons ':rpm_y (rpm_y msg))
    (cl:cons ':rpm_z (rpm_z msg))
    (cl:cons ':cmd_x (cmd_x msg))
))
;//! \htmlinclude Arm-response.msg.html

(cl:defclass <Arm-response> (roslisp-msg-protocol:ros-message)
  ((resultArm
    :reader resultArm
    :initarg :resultArm
    :type cl:boolean
    :initform cl:nil)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Arm-response (<Arm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Arm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Arm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_controller-srv:<Arm-response> is deprecated: use arm_controller-srv:Arm-response instead.")))

(cl:ensure-generic-function 'resultArm-val :lambda-list '(m))
(cl:defmethod resultArm-val ((m <Arm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:resultArm-val is deprecated.  Use arm_controller-srv:resultArm instead.")
  (resultArm m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Arm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_controller-srv:status-val is deprecated.  Use arm_controller-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Arm-response>) ostream)
  "Serializes a message object of type '<Arm-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'resultArm) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Arm-response>) istream)
  "Deserializes a message object of type '<Arm-response>"
    (cl:setf (cl:slot-value msg 'resultArm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Arm-response>)))
  "Returns string type for a service object of type '<Arm-response>"
  "arm_controller/ArmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm-response)))
  "Returns string type for a service object of type 'Arm-response"
  "arm_controller/ArmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Arm-response>)))
  "Returns md5sum for a message object of type '<Arm-response>"
  "7768e40cbfffda0fd377b4962bb94200")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Arm-response)))
  "Returns md5sum for a message object of type 'Arm-response"
  "7768e40cbfffda0fd377b4962bb94200")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Arm-response>)))
  "Returns full string definition for message of type '<Arm-response>"
  (cl:format cl:nil "bool resultArm~%int8 status~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Arm-response)))
  "Returns full string definition for message of type 'Arm-response"
  (cl:format cl:nil "bool resultArm~%int8 status~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Arm-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Arm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Arm-response
    (cl:cons ':resultArm (resultArm msg))
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Arm)))
  'Arm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Arm)))
  'Arm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm)))
  "Returns string type for a service object of type '<Arm>"
  "arm_controller/Arm")