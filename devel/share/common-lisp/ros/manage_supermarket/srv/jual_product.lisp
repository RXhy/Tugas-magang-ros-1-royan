; Auto-generated. Do not edit!


(cl:in-package manage_supermarket-srv)


;//! \htmlinclude jual_product-request.msg.html

(cl:defclass <jual_product-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (amount
    :reader amount
    :initarg :amount
    :type cl:integer
    :initform 0))
)

(cl:defclass jual_product-request (<jual_product-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <jual_product-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'jual_product-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manage_supermarket-srv:<jual_product-request> is deprecated: use manage_supermarket-srv:jual_product-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <jual_product-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:name-val is deprecated.  Use manage_supermarket-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'amount-val :lambda-list '(m))
(cl:defmethod amount-val ((m <jual_product-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:amount-val is deprecated.  Use manage_supermarket-srv:amount instead.")
  (amount m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <jual_product-request>) ostream)
  "Serializes a message object of type '<jual_product-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'amount)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <jual_product-request>) istream)
  "Deserializes a message object of type '<jual_product-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'amount) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<jual_product-request>)))
  "Returns string type for a service object of type '<jual_product-request>"
  "manage_supermarket/jual_productRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jual_product-request)))
  "Returns string type for a service object of type 'jual_product-request"
  "manage_supermarket/jual_productRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<jual_product-request>)))
  "Returns md5sum for a message object of type '<jual_product-request>"
  "5bd0de7fab394602d0d215365e0c3e08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'jual_product-request)))
  "Returns md5sum for a message object of type 'jual_product-request"
  "5bd0de7fab394602d0d215365e0c3e08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<jual_product-request>)))
  "Returns full string definition for message of type '<jual_product-request>"
  (cl:format cl:nil "string name~%int64 amount~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'jual_product-request)))
  "Returns full string definition for message of type 'jual_product-request"
  (cl:format cl:nil "string name~%int64 amount~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <jual_product-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <jual_product-request>))
  "Converts a ROS message object to a list"
  (cl:list 'jual_product-request
    (cl:cons ':name (name msg))
    (cl:cons ':amount (amount msg))
))
;//! \htmlinclude jual_product-response.msg.html

(cl:defclass <jual_product-response> (roslisp-msg-protocol:ros-message)
  ((transaction
    :reader transaction
    :initarg :transaction
    :type cl:string
    :initform ""))
)

(cl:defclass jual_product-response (<jual_product-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <jual_product-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'jual_product-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manage_supermarket-srv:<jual_product-response> is deprecated: use manage_supermarket-srv:jual_product-response instead.")))

(cl:ensure-generic-function 'transaction-val :lambda-list '(m))
(cl:defmethod transaction-val ((m <jual_product-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:transaction-val is deprecated.  Use manage_supermarket-srv:transaction instead.")
  (transaction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <jual_product-response>) ostream)
  "Serializes a message object of type '<jual_product-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'transaction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'transaction))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <jual_product-response>) istream)
  "Deserializes a message object of type '<jual_product-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'transaction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'transaction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<jual_product-response>)))
  "Returns string type for a service object of type '<jual_product-response>"
  "manage_supermarket/jual_productResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jual_product-response)))
  "Returns string type for a service object of type 'jual_product-response"
  "manage_supermarket/jual_productResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<jual_product-response>)))
  "Returns md5sum for a message object of type '<jual_product-response>"
  "5bd0de7fab394602d0d215365e0c3e08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'jual_product-response)))
  "Returns md5sum for a message object of type 'jual_product-response"
  "5bd0de7fab394602d0d215365e0c3e08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<jual_product-response>)))
  "Returns full string definition for message of type '<jual_product-response>"
  (cl:format cl:nil "string transaction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'jual_product-response)))
  "Returns full string definition for message of type 'jual_product-response"
  (cl:format cl:nil "string transaction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <jual_product-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'transaction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <jual_product-response>))
  "Converts a ROS message object to a list"
  (cl:list 'jual_product-response
    (cl:cons ':transaction (transaction msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'jual_product)))
  'jual_product-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'jual_product)))
  'jual_product-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jual_product)))
  "Returns string type for a service object of type '<jual_product>"
  "manage_supermarket/jual_product")