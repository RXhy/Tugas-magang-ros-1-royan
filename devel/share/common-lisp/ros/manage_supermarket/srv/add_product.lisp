; Auto-generated. Do not edit!


(cl:in-package manage_supermarket-srv)


;//! \htmlinclude add_product-request.msg.html

(cl:defclass <add_product-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (price
    :reader price
    :initarg :price
    :type cl:float
    :initform 0.0)
   (stock
    :reader stock
    :initarg :stock
    :type cl:integer
    :initform 0))
)

(cl:defclass add_product-request (<add_product-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add_product-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add_product-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manage_supermarket-srv:<add_product-request> is deprecated: use manage_supermarket-srv:add_product-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <add_product-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:name-val is deprecated.  Use manage_supermarket-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'price-val :lambda-list '(m))
(cl:defmethod price-val ((m <add_product-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:price-val is deprecated.  Use manage_supermarket-srv:price instead.")
  (price m))

(cl:ensure-generic-function 'stock-val :lambda-list '(m))
(cl:defmethod stock-val ((m <add_product-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:stock-val is deprecated.  Use manage_supermarket-srv:stock instead.")
  (stock m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add_product-request>) ostream)
  "Serializes a message object of type '<add_product-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'price))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'stock)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add_product-request>) istream)
  "Deserializes a message object of type '<add_product-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'price) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stock) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add_product-request>)))
  "Returns string type for a service object of type '<add_product-request>"
  "manage_supermarket/add_productRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_product-request)))
  "Returns string type for a service object of type 'add_product-request"
  "manage_supermarket/add_productRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add_product-request>)))
  "Returns md5sum for a message object of type '<add_product-request>"
  "1f72cf40c5b6f23171699427bb08011e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add_product-request)))
  "Returns md5sum for a message object of type 'add_product-request"
  "1f72cf40c5b6f23171699427bb08011e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add_product-request>)))
  "Returns full string definition for message of type '<add_product-request>"
  (cl:format cl:nil "string name~%float64 price~%int64 stock~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add_product-request)))
  "Returns full string definition for message of type 'add_product-request"
  (cl:format cl:nil "string name~%float64 price~%int64 stock~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add_product-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add_product-request>))
  "Converts a ROS message object to a list"
  (cl:list 'add_product-request
    (cl:cons ':name (name msg))
    (cl:cons ':price (price msg))
    (cl:cons ':stock (stock msg))
))
;//! \htmlinclude add_product-response.msg.html

(cl:defclass <add_product-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:string
    :initform ""))
)

(cl:defclass add_product-response (<add_product-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add_product-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add_product-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manage_supermarket-srv:<add_product-response> is deprecated: use manage_supermarket-srv:add_product-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <add_product-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:feedback-val is deprecated.  Use manage_supermarket-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add_product-response>) ostream)
  "Serializes a message object of type '<add_product-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'feedback))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add_product-response>) istream)
  "Deserializes a message object of type '<add_product-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add_product-response>)))
  "Returns string type for a service object of type '<add_product-response>"
  "manage_supermarket/add_productResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_product-response)))
  "Returns string type for a service object of type 'add_product-response"
  "manage_supermarket/add_productResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add_product-response>)))
  "Returns md5sum for a message object of type '<add_product-response>"
  "1f72cf40c5b6f23171699427bb08011e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add_product-response)))
  "Returns md5sum for a message object of type 'add_product-response"
  "1f72cf40c5b6f23171699427bb08011e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add_product-response>)))
  "Returns full string definition for message of type '<add_product-response>"
  (cl:format cl:nil "string feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add_product-response)))
  "Returns full string definition for message of type 'add_product-response"
  (cl:format cl:nil "string feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add_product-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add_product-response>))
  "Converts a ROS message object to a list"
  (cl:list 'add_product-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'add_product)))
  'add_product-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'add_product)))
  'add_product-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_product)))
  "Returns string type for a service object of type '<add_product>"
  "manage_supermarket/add_product")