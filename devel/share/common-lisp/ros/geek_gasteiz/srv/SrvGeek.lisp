; Auto-generated. Do not edit!


(cl:in-package geek_gasteiz-srv)


;//! \htmlinclude SrvGeek-request.msg.html

(cl:defclass <SrvGeek-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass SrvGeek-request (<SrvGeek-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvGeek-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvGeek-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geek_gasteiz-srv:<SrvGeek-request> is deprecated: use geek_gasteiz-srv:SrvGeek-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SrvGeek-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geek_gasteiz-srv:x-val is deprecated.  Use geek_gasteiz-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SrvGeek-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geek_gasteiz-srv:y-val is deprecated.  Use geek_gasteiz-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvGeek-request>) ostream)
  "Serializes a message object of type '<SrvGeek-request>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvGeek-request>) istream)
  "Deserializes a message object of type '<SrvGeek-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvGeek-request>)))
  "Returns string type for a service object of type '<SrvGeek-request>"
  "geek_gasteiz/SrvGeekRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvGeek-request)))
  "Returns string type for a service object of type 'SrvGeek-request"
  "geek_gasteiz/SrvGeekRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvGeek-request>)))
  "Returns md5sum for a message object of type '<SrvGeek-request>"
  "2071066d24f0fa7611852ac3152d1d50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvGeek-request)))
  "Returns md5sum for a message object of type 'SrvGeek-request"
  "2071066d24f0fa7611852ac3152d1d50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvGeek-request>)))
  "Returns full string definition for message of type '<SrvGeek-request>"
  (cl:format cl:nil "int64 x~%int64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvGeek-request)))
  "Returns full string definition for message of type 'SrvGeek-request"
  (cl:format cl:nil "int64 x~%int64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvGeek-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvGeek-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvGeek-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude SrvGeek-response.msg.html

(cl:defclass <SrvGeek-response> (roslisp-msg-protocol:ros-message)
  ((mul
    :reader mul
    :initarg :mul
    :type cl:integer
    :initform 0))
)

(cl:defclass SrvGeek-response (<SrvGeek-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvGeek-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvGeek-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geek_gasteiz-srv:<SrvGeek-response> is deprecated: use geek_gasteiz-srv:SrvGeek-response instead.")))

(cl:ensure-generic-function 'mul-val :lambda-list '(m))
(cl:defmethod mul-val ((m <SrvGeek-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geek_gasteiz-srv:mul-val is deprecated.  Use geek_gasteiz-srv:mul instead.")
  (mul m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvGeek-response>) ostream)
  "Serializes a message object of type '<SrvGeek-response>"
  (cl:let* ((signed (cl:slot-value msg 'mul)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvGeek-response>) istream)
  "Deserializes a message object of type '<SrvGeek-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mul) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvGeek-response>)))
  "Returns string type for a service object of type '<SrvGeek-response>"
  "geek_gasteiz/SrvGeekResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvGeek-response)))
  "Returns string type for a service object of type 'SrvGeek-response"
  "geek_gasteiz/SrvGeekResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvGeek-response>)))
  "Returns md5sum for a message object of type '<SrvGeek-response>"
  "2071066d24f0fa7611852ac3152d1d50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvGeek-response)))
  "Returns md5sum for a message object of type 'SrvGeek-response"
  "2071066d24f0fa7611852ac3152d1d50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvGeek-response>)))
  "Returns full string definition for message of type '<SrvGeek-response>"
  (cl:format cl:nil "int64 mul~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvGeek-response)))
  "Returns full string definition for message of type 'SrvGeek-response"
  (cl:format cl:nil "int64 mul~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvGeek-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvGeek-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvGeek-response
    (cl:cons ':mul (mul msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SrvGeek)))
  'SrvGeek-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SrvGeek)))
  'SrvGeek-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvGeek)))
  "Returns string type for a service object of type '<SrvGeek>"
  "geek_gasteiz/SrvGeek")