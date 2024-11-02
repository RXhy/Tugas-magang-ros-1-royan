;; Auto-generated. Do not edit!


(when (boundp 'manage_supermarket::jual_product)
  (if (not (find-package "MANAGE_SUPERMARKET"))
    (make-package "MANAGE_SUPERMARKET"))
  (shadow 'jual_product (find-package "MANAGE_SUPERMARKET")))
(unless (find-package "MANAGE_SUPERMARKET::JUAL_PRODUCT")
  (make-package "MANAGE_SUPERMARKET::JUAL_PRODUCT"))
(unless (find-package "MANAGE_SUPERMARKET::JUAL_PRODUCTREQUEST")
  (make-package "MANAGE_SUPERMARKET::JUAL_PRODUCTREQUEST"))
(unless (find-package "MANAGE_SUPERMARKET::JUAL_PRODUCTRESPONSE")
  (make-package "MANAGE_SUPERMARKET::JUAL_PRODUCTRESPONSE"))

(in-package "ROS")





(defclass manage_supermarket::jual_productRequest
  :super ros::object
  :slots (_name _amount ))

(defmethod manage_supermarket::jual_productRequest
  (:init
   (&key
    ((:name __name) "")
    ((:amount __amount) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _amount (round __amount))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:amount
   (&optional __amount)
   (if __amount (setq _amount __amount)) _amount)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int64 _amount
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int64 _amount
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _amount (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _amount) (= (length (_amount . bv)) 2)) ;; bignum
              (write-long (ash (elt (_amount . bv) 0) 0) s)
              (write-long (ash (elt (_amount . bv) 1) -1) s))
             ((and (class _amount) (= (length (_amount . bv)) 1)) ;; big1
              (write-long (elt (_amount . bv) 0) s)
              (write-long (if (>= _amount 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _amount s)(write-long (if (>= _amount 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _amount
#+(or :alpha :irix6 :x86_64)
      (setf _amount (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _amount (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass manage_supermarket::jual_productResponse
  :super ros::object
  :slots (_transaction ))

(defmethod manage_supermarket::jual_productResponse
  (:init
   (&key
    ((:transaction __transaction) "")
    )
   (send-super :init)
   (setq _transaction (string __transaction))
   self)
  (:transaction
   (&optional __transaction)
   (if __transaction (setq _transaction __transaction)) _transaction)
  (:serialization-length
   ()
   (+
    ;; string _transaction
    4 (length _transaction)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _transaction
       (write-long (length _transaction) s) (princ _transaction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _transaction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _transaction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass manage_supermarket::jual_product
  :super ros::object
  :slots ())

(setf (get manage_supermarket::jual_product :md5sum-) "5bd0de7fab394602d0d215365e0c3e08")
(setf (get manage_supermarket::jual_product :datatype-) "manage_supermarket/jual_product")
(setf (get manage_supermarket::jual_product :request) manage_supermarket::jual_productRequest)
(setf (get manage_supermarket::jual_product :response) manage_supermarket::jual_productResponse)

(defmethod manage_supermarket::jual_productRequest
  (:response () (instance manage_supermarket::jual_productResponse :init)))

(setf (get manage_supermarket::jual_productRequest :md5sum-) "5bd0de7fab394602d0d215365e0c3e08")
(setf (get manage_supermarket::jual_productRequest :datatype-) "manage_supermarket/jual_productRequest")
(setf (get manage_supermarket::jual_productRequest :definition-)
      "string name
int64 amount
---
string transaction
")

(setf (get manage_supermarket::jual_productResponse :md5sum-) "5bd0de7fab394602d0d215365e0c3e08")
(setf (get manage_supermarket::jual_productResponse :datatype-) "manage_supermarket/jual_productResponse")
(setf (get manage_supermarket::jual_productResponse :definition-)
      "string name
int64 amount
---
string transaction
")



(provide :manage_supermarket/jual_product "5bd0de7fab394602d0d215365e0c3e08")


