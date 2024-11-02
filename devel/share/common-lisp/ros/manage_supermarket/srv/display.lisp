; Auto-generated. Do not edit!


(cl:in-package manage_supermarket-srv)


;//! \htmlinclude display-request.msg.html

(cl:defclass <display-request> (roslisp-msg-protocol:ros-message)
  ((display
    :reader display
    :initarg :display
    :type cl:string
    :initform ""))
)

(cl:defclass display-request (<display-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manage_supermarket-srv:<display-request> is deprecated: use manage_supermarket-srv:display-request instead.")))

(cl:ensure-generic-function 'display-val :lambda-list '(m))
(cl:defmethod display-val ((m <display-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:display-val is deprecated.  Use manage_supermarket-srv:display instead.")
  (display m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display-request>) ostream)
  "Serializes a message object of type '<display-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'display))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'display))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display-request>) istream)
  "Deserializes a message object of type '<display-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'display) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'display) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display-request>)))
  "Returns string type for a service object of type '<display-request>"
  "manage_supermarket/displayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display-request)))
  "Returns string type for a service object of type 'display-request"
  "manage_supermarket/displayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display-request>)))
  "Returns md5sum for a message object of type '<display-request>"
  "85fe84f26349bbc9952465d8d14f21f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display-request)))
  "Returns md5sum for a message object of type 'display-request"
  "85fe84f26349bbc9952465d8d14f21f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display-request>)))
  "Returns full string definition for message of type '<display-request>"
  (cl:format cl:nil "string display~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display-request)))
  "Returns full string definition for message of type 'display-request"
  (cl:format cl:nil "string display~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'display))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display-request>))
  "Converts a ROS message object to a list"
  (cl:list 'display-request
    (cl:cons ':display (display msg))
))
;//! \htmlinclude display-response.msg.html

(cl:defclass <display-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type cl:string
    :initform ""))
)

(cl:defclass display-response (<display-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manage_supermarket-srv:<display-response> is deprecated: use manage_supermarket-srv:display-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <display-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:output-val is deprecated.  Use manage_supermarket-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display-response>) ostream)
  "Serializes a message object of type '<display-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'output))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display-response>) istream)
  "Deserializes a message object of type '<display-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'output) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display-response>)))
  "Returns string type for a service object of type '<display-response>"
  "manage_supermarket/displayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display-response)))
  "Returns string type for a service object of type 'display-response"
  "manage_supermarket/displayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display-response>)))
  "Returns md5sum for a message object of type '<display-response>"
  "85fe84f26349bbc9952465d8d14f21f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display-response)))
  "Returns md5sum for a message object of type 'display-response"
  "85fe84f26349bbc9952465d8d14f21f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display-response>)))
  "Returns full string definition for message of type '<display-response>"
  (cl:format cl:nil "string output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display-response)))
  "Returns full string definition for message of type 'display-response"
  (cl:format cl:nil "string output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display-response>))
  "Converts a ROS message object to a list"
  (cl:list 'display-response
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'display)))
  'display-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'display)))
  'display-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display)))
  "Returns string type for a service object of type '<display>"
  "manage_supermarket/display")