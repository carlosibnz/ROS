; Auto-generated. Do not edit!


(cl:in-package geek_gasteiz-msg)


;//! \htmlinclude MsgGeek.msg.html

(cl:defclass <MsgGeek> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (num
    :reader num
    :initarg :num
    :type cl:float
    :initform 0.0))
)

(cl:defclass MsgGeek (<MsgGeek>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MsgGeek>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MsgGeek)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geek_gasteiz-msg:<MsgGeek> is deprecated: use geek_gasteiz-msg:MsgGeek instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <MsgGeek>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geek_gasteiz-msg:stamp-val is deprecated.  Use geek_gasteiz-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <MsgGeek>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geek_gasteiz-msg:num-val is deprecated.  Use geek_gasteiz-msg:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MsgGeek>) ostream)
  "Serializes a message object of type '<MsgGeek>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'num))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MsgGeek>) istream)
  "Deserializes a message object of type '<MsgGeek>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'num) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MsgGeek>)))
  "Returns string type for a message object of type '<MsgGeek>"
  "geek_gasteiz/MsgGeek")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MsgGeek)))
  "Returns string type for a message object of type 'MsgGeek"
  "geek_gasteiz/MsgGeek")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MsgGeek>)))
  "Returns md5sum for a message object of type '<MsgGeek>"
  "2b5fd030953573f8ed3dc9bd836e9962")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MsgGeek)))
  "Returns md5sum for a message object of type 'MsgGeek"
  "2b5fd030953573f8ed3dc9bd836e9962")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MsgGeek>)))
  "Returns full string definition for message of type '<MsgGeek>"
  (cl:format cl:nil "time stamp~%float32 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MsgGeek)))
  "Returns full string definition for message of type 'MsgGeek"
  (cl:format cl:nil "time stamp~%float32 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MsgGeek>))
  (cl:+ 0
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MsgGeek>))
  "Converts a ROS message object to a list"
  (cl:list 'MsgGeek
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':num (num msg))
))
