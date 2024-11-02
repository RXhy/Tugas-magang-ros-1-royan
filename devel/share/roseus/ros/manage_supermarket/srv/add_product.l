;; Auto-generated. Do not edit!


(when (boundp 'manage_supermarket::add_product)
  (if (not (find-package "MANAGE_SUPERMARKET"))
    (make-package "MANAGE_SUPERMARKET"))
  (shadow 'add_product (find-package "MANAGE_SUPERMARKET")))
(unless (find-package "MANAGE_SUPERMARKET::ADD_PRODUCT")
  (make-package "MANAGE_SUPERMARKET::ADD_PRODUCT"))
(unless (find-package "MANAGE_SUPERMARKET::ADD_PRODUCTREQUEST")
  (make-package "MANAGE_SUPERMARKET::ADD_PRODUCTREQUEST"))
(unless (find-package "MANAGE_SUPERMARKET::ADD_PRODUCTRESPONSE")
  (make-package "MANAGE_SUPERMARKET::ADD_PRODUCTRESPONSE"))

(in-package "ROS")





(defclass manage_supermarket::add_productRequest
  :super ros::object
  :slots (_name _price _stock ))

(defmethod manage_supermarket::add_productRequest
  (:init
   (&key
    ((:name __name) "")
    ((:price __price) 0.0)
    ((:stock __stock) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _price (float __price))
   (setq _stock (round __stock))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:price
   (&optional __price)
   (if __price (setq _price __price)) _price)
  (:stock
   (&optional __stock)
   (if __stock (setq _stock __stock)) _stock)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _price
    8
    ;; int64 _stock
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _price
       (sys::poke _price (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _stock
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _stock (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _stock) (= (length (_stock . bv)) 2)) ;; bignum
              (write-long (ash (elt (_stock . bv) 0) 0) s)
              (write-long (ash (elt (_stock . bv) 1) -1) s))
             ((and (class _stock) (= (length (_stock . bv)) 1)) ;; big1
              (write-long (elt (_stock . bv) 0) s)
              (write-long (if (>= _stock 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _stock s)(write-long (if (>= _stock 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _price
     (setq _price (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _stock
#+(or :alpha :irix6 :x86_64)
      (setf _stock (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _stock (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass manage_supermarket::add_productResponse
  :super ros::object
  :slots (_feedback ))

(defmethod manage_supermarket::add_productResponse
  (:init
   (&key
    ((:feedback __feedback) "")
    )
   (send-super :init)
   (setq _feedback (string __feedback))
   self)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; string _feedback
    4 (length _feedback)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _feedback
       (write-long (length _feedback) s) (princ _feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass manage_supermarket::add_product
  :super ros::object
  :slots ())

(setf (get manage_supermarket::add_product :md5sum-) "1f72cf40c5b6f23171699427bb08011e")
(setf (get manage_supermarket::add_product :datatype-) "manage_supermarket/add_product")
(setf (get manage_supermarket::add_product :request) manage_supermarket::add_productRequest)
(setf (get manage_supermarket::add_product :response) manage_supermarket::add_productResponse)

(defmethod manage_supermarket::add_productRequest
  (:response () (instance manage_supermarket::add_productResponse :init)))

(setf (get manage_supermarket::add_productRequest :md5sum-) "1f72cf40c5b6f23171699427bb08011e")
(setf (get manage_supermarket::add_productRequest :datatype-) "manage_supermarket/add_productRequest")
(setf (get manage_supermarket::add_productRequest :definition-)
      "string name
float64 price
int64 stock
---
string feedback
")

(setf (get manage_supermarket::add_productResponse :md5sum-) "1f72cf40c5b6f23171699427bb08011e")
(setf (get manage_supermarket::add_productResponse :datatype-) "manage_supermarket/add_productResponse")
(setf (get manage_supermarket::add_productResponse :definition-)
      "string name
float64 price
int64 stock
---
string feedback
")



(provide :manage_supermarket/add_product "1f72cf40c5b6f23171699427bb08011e")


