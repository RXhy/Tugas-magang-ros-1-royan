; Auto-generated. Do not edit!


(cl:in-package manage_supermarket-srv)


;//! \htmlinclude delete_product-request.msg.html

(cl:defclass <delete_product-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass delete_product-request (<delete_product-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <delete_product-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'delete_product-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manage_supermarket-srv:<delete_product-request> is deprecated: use manage_supermarket-srv:delete_product-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <delete_product-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:name-val is deprecated.  Use manage_supermarket-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <delete_product-request>) ostream)
  "Serializes a message object of type '<delete_product-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <delete_product-request>) istream)
  "Deserializes a message object of type '<delete_product-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<delete_product-request>)))
  "Returns string type for a service object of type '<delete_product-request>"
  "manage_supermarket/delete_productRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'delete_product-request)))
  "Returns string type for a service object of type 'delete_product-request"
  "manage_supermarket/delete_productRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<delete_product-request>)))
  "Returns md5sum for a message object of type '<delete_product-request>"
  "a4a7378fbe2cb6f7c7e5e0c2db2ce3e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'delete_product-request)))
  "Returns md5sum for a message object of type 'delete_product-request"
  "a4a7378fbe2cb6f7c7e5e0c2db2ce3e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<delete_product-request>)))
  "Returns full string definition for message of type '<delete_product-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'delete_product-request)))
  "Returns full string definition for message of type 'delete_product-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <delete_product-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <delete_product-request>))
  "Converts a ROS message object to a list"
  (cl:list 'delete_product-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude delete_product-response.msg.html

(cl:defclass <delete_product-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:string
    :initform ""))
)

(cl:defclass delete_product-response (<delete_product-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <delete_product-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'delete_product-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manage_supermarket-srv:<delete_product-response> is deprecated: use manage_supermarket-srv:delete_product-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <delete_product-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:feedback-val is deprecated.  Use manage_supermarket-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <delete_product-response>) ostream)
  "Serializes a message object of type '<delete_product-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'feedback))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <delete_product-response>) istream)
  "Deserializes a message object of type '<delete_product-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<delete_product-response>)))
  "Returns string type for a service object of type '<delete_product-response>"
  "manage_supermarket/delete_productResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'delete_product-response)))
  "Returns string type for a service object of type 'delete_product-response"
  "manage_supermarket/delete_productResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<delete_product-response>)))
  "Returns md5sum for a message object of type '<delete_product-response>"
  "a4a7378fbe2cb6f7c7e5e0c2db2ce3e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'delete_product-response)))
  "Returns md5sum for a message object of type 'delete_product-response"
  "a4a7378fbe2cb6f7c7e5e0c2db2ce3e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<delete_product-response>)))
  "Returns full string definition for message of type '<delete_product-response>"
  (cl:format cl:nil "string feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'delete_product-response)))
  "Returns full string definition for message of type 'delete_product-response"
  (cl:format cl:nil "string feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <delete_product-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <delete_product-response>))
  "Converts a ROS message object to a list"
  (cl:list 'delete_product-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'delete_product)))
  'delete_product-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'delete_product)))
  'delete_product-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'delete_product)))
  "Returns string type for a service object of type '<delete_product>"
  "manage_supermarket/delete_product")