; Auto-generated. Do not edit!


(cl:in-package manage_supermarket-srv)


;//! \htmlinclude editharga-request.msg.html

(cl:defclass <editharga-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (newHarga
    :reader newHarga
    :initarg :newHarga
    :type cl:float
    :initform 0.0))
)

(cl:defclass editharga-request (<editharga-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <editharga-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'editharga-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manage_supermarket-srv:<editharga-request> is deprecated: use manage_supermarket-srv:editharga-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <editharga-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:name-val is deprecated.  Use manage_supermarket-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'newHarga-val :lambda-list '(m))
(cl:defmethod newHarga-val ((m <editharga-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:newHarga-val is deprecated.  Use manage_supermarket-srv:newHarga instead.")
  (newHarga m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <editharga-request>) ostream)
  "Serializes a message object of type '<editharga-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'newHarga))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <editharga-request>) istream)
  "Deserializes a message object of type '<editharga-request>"
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
    (cl:setf (cl:slot-value msg 'newHarga) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<editharga-request>)))
  "Returns string type for a service object of type '<editharga-request>"
  "manage_supermarket/edithargaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'editharga-request)))
  "Returns string type for a service object of type 'editharga-request"
  "manage_supermarket/edithargaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<editharga-request>)))
  "Returns md5sum for a message object of type '<editharga-request>"
  "568b19a2ce38f33eeb2158cd05ab5278")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'editharga-request)))
  "Returns md5sum for a message object of type 'editharga-request"
  "568b19a2ce38f33eeb2158cd05ab5278")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<editharga-request>)))
  "Returns full string definition for message of type '<editharga-request>"
  (cl:format cl:nil "string name~%float64 newHarga~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'editharga-request)))
  "Returns full string definition for message of type 'editharga-request"
  (cl:format cl:nil "string name~%float64 newHarga~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <editharga-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <editharga-request>))
  "Converts a ROS message object to a list"
  (cl:list 'editharga-request
    (cl:cons ':name (name msg))
    (cl:cons ':newHarga (newHarga msg))
))
;//! \htmlinclude editharga-response.msg.html

(cl:defclass <editharga-response> (roslisp-msg-protocol:ros-message)
  ((harga_baru
    :reader harga_baru
    :initarg :harga_baru
    :type cl:string
    :initform ""))
)

(cl:defclass editharga-response (<editharga-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <editharga-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'editharga-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manage_supermarket-srv:<editharga-response> is deprecated: use manage_supermarket-srv:editharga-response instead.")))

(cl:ensure-generic-function 'harga_baru-val :lambda-list '(m))
(cl:defmethod harga_baru-val ((m <editharga-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manage_supermarket-srv:harga_baru-val is deprecated.  Use manage_supermarket-srv:harga_baru instead.")
  (harga_baru m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <editharga-response>) ostream)
  "Serializes a message object of type '<editharga-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'harga_baru))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'harga_baru))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <editharga-response>) istream)
  "Deserializes a message object of type '<editharga-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'harga_baru) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'harga_baru) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<editharga-response>)))
  "Returns string type for a service object of type '<editharga-response>"
  "manage_supermarket/edithargaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'editharga-response)))
  "Returns string type for a service object of type 'editharga-response"
  "manage_supermarket/edithargaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<editharga-response>)))
  "Returns md5sum for a message object of type '<editharga-response>"
  "568b19a2ce38f33eeb2158cd05ab5278")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'editharga-response)))
  "Returns md5sum for a message object of type 'editharga-response"
  "568b19a2ce38f33eeb2158cd05ab5278")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<editharga-response>)))
  "Returns full string definition for message of type '<editharga-response>"
  (cl:format cl:nil "string harga_baru~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'editharga-response)))
  "Returns full string definition for message of type 'editharga-response"
  (cl:format cl:nil "string harga_baru~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <editharga-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'harga_baru))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <editharga-response>))
  "Converts a ROS message object to a list"
  (cl:list 'editharga-response
    (cl:cons ':harga_baru (harga_baru msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'editharga)))
  'editharga-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'editharga)))
  'editharga-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'editharga)))
  "Returns string type for a service object of type '<editharga>"
  "manage_supermarket/editharga")