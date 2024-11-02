; Auto-generated. Do not edit!


(cl:in-package manage_supermarket-srv)


;//! \htmlinclude restock-request.msg.html

(cl:defclass <restock-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (newStock
    :reader newStock
    :initarg :newStock
    :type cl:integer
    :initform 0))
)

(cl:defclass restock-request (<restock-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <restock-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'restock-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manage_supermarket-srv:<restock-request> is deprecated: use manage_supermarket-srv:restock-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <restock-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:name-val is deprecated.  Use manage_supermarket-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'newStock-val :lambda-list '(m))
(cl:defmethod newStock-val ((m <restock-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:newStock-val is deprecated.  Use manage_supermarket-srv:newStock instead.")
  (newStock m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <restock-request>) ostream)
  "Serializes a message object of type '<restock-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'newStock)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <restock-request>) istream)
  "Deserializes a message object of type '<restock-request>"
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
      (cl:setf (cl:slot-value msg 'newStock) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<restock-request>)))
  "Returns string type for a service object of type '<restock-request>"
  "manage_supermarket/restockRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'restock-request)))
  "Returns string type for a service object of type 'restock-request"
  "manage_supermarket/restockRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<restock-request>)))
  "Returns md5sum for a message object of type '<restock-request>"
  "436aaeb2230331f8d91f79fac15bd4ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'restock-request)))
  "Returns md5sum for a message object of type 'restock-request"
  "436aaeb2230331f8d91f79fac15bd4ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<restock-request>)))
  "Returns full string definition for message of type '<restock-request>"
  (cl:format cl:nil "string name~%int64 newStock~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'restock-request)))
  "Returns full string definition for message of type 'restock-request"
  (cl:format cl:nil "string name~%int64 newStock~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <restock-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <restock-request>))
  "Converts a ROS message object to a list"
  (cl:list 'restock-request
    (cl:cons ':name (name msg))
    (cl:cons ':newStock (newStock msg))
))
;//! \htmlinclude restock-response.msg.html

(cl:defclass <restock-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:string
    :initform "")
   (jumlah
    :reader jumlah
    :initarg :jumlah
    :type cl:integer
    :initform 0))
)

(cl:defclass restock-response (<restock-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <restock-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'restock-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manage_supermarket-srv:<restock-response> is deprecated: use manage_supermarket-srv:restock-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <restock-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:feedback-val is deprecated.  Use manage_supermarket-srv:feedback instead.")
  (feedback m))

(cl:ensure-generic-function 'jumlah-val :lambda-list '(m))
(cl:defmethod jumlah-val ((m <restock-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:jumlah-val is deprecated.  Use manage_supermarket-srv:jumlah instead.")
  (jumlah m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <restock-response>) ostream)
  "Serializes a message object of type '<restock-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'feedback))
  (cl:let* ((signed (cl:slot-value msg 'jumlah)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <restock-response>) istream)
  "Deserializes a message object of type '<restock-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'jumlah) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<restock-response>)))
  "Returns string type for a service object of type '<restock-response>"
  "manage_supermarket/restockResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'restock-response)))
  "Returns string type for a service object of type 'restock-response"
  "manage_supermarket/restockResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<restock-response>)))
  "Returns md5sum for a message object of type '<restock-response>"
  "436aaeb2230331f8d91f79fac15bd4ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'restock-response)))
  "Returns md5sum for a message object of type 'restock-response"
  "436aaeb2230331f8d91f79fac15bd4ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<restock-response>)))
  "Returns full string definition for message of type '<restock-response>"
  (cl:format cl:nil "string feedback~%int64 jumlah~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'restock-response)))
  "Returns full string definition for message of type 'restock-response"
  (cl:format cl:nil "string feedback~%int64 jumlah~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <restock-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'feedback))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <restock-response>))
  "Converts a ROS message object to a list"
  (cl:list 'restock-response
    (cl:cons ':feedback (feedback msg))
    (cl:cons ':jumlah (jumlah msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'restock)))
  'restock-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'restock)))
  'restock-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'restock)))
  "Returns string type for a service object of type '<restock>"
  "manage_supermarket/restock")