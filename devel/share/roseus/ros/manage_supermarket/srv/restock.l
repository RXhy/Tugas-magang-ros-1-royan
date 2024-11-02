;; Auto-generated. Do not edit!


(when (boundp 'manage_supermarket::restock)
  (if (not (find-package "MANAGE_SUPERMARKET"))
    (make-package "MANAGE_SUPERMARKET"))
  (shadow 'restock (find-package "MANAGE_SUPERMARKET")))
(unless (find-package "MANAGE_SUPERMARKET::RESTOCK")
  (make-package "MANAGE_SUPERMARKET::RESTOCK"))
(unless (find-package "MANAGE_SUPERMARKET::RESTOCKREQUEST")
  (make-package "MANAGE_SUPERMARKET::RESTOCKREQUEST"))
(unless (find-package "MANAGE_SUPERMARKET::RESTOCKRESPONSE")
  (make-package "MANAGE_SUPERMARKET::RESTOCKRESPONSE"))

(in-package "ROS")





(defclass manage_supermarket::restockRequest
  :super ros::object
  :slots (_name _newStock ))

(defmethod manage_supermarket::restockRequest
  (:init
   (&key
    ((:name __name) "")
    ((:newStock __newStock) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _newStock (round __newStock))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:newStock
   (&optional __newStock)
   (if __newStock (setq _newStock __newStock)) _newStock)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int64 _newStock
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int64 _newStock
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _newStock (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _newStock) (= (length (_newStock . bv)) 2)) ;; bignum
              (write-long (ash (elt (_newStock . bv) 0) 0) s)
              (write-long (ash (elt (_newStock . bv) 1) -1) s))
             ((and (class _newStock) (= (length (_newStock . bv)) 1)) ;; big1
              (write-long (elt (_newStock . bv) 0) s)
              (write-long (if (>= _newStock 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _newStock s)(write-long (if (>= _newStock 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _newStock
#+(or :alpha :irix6 :x86_64)
      (setf _newStock (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _newStock (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass manage_supermarket::restockResponse
  :super ros::object
  :slots (_feedback _jumlah ))

(defmethod manage_supermarket::restockResponse
  (:init
   (&key
    ((:feedback __feedback) "")
    ((:jumlah __jumlah) 0)
    )
   (send-super :init)
   (setq _feedback (string __feedback))
   (setq _jumlah (round __jumlah))
   self)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:jumlah
   (&optional __jumlah)
   (if __jumlah (setq _jumlah __jumlah)) _jumlah)
  (:serialization-length
   ()
   (+
    ;; string _feedback
    4 (length _feedback)
    ;; int64 _jumlah
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _feedback
       (write-long (length _feedback) s) (princ _feedback s)
     ;; int64 _jumlah
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _jumlah (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _jumlah) (= (length (_jumlah . bv)) 2)) ;; bignum
              (write-long (ash (elt (_jumlah . bv) 0) 0) s)
              (write-long (ash (elt (_jumlah . bv) 1) -1) s))
             ((and (class _jumlah) (= (length (_jumlah . bv)) 1)) ;; big1
              (write-long (elt (_jumlah . bv) 0) s)
              (write-long (if (>= _jumlah 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _jumlah s)(write-long (if (>= _jumlah 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _jumlah
#+(or :alpha :irix6 :x86_64)
      (setf _jumlah (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _jumlah (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass manage_supermarket::restock
  :super ros::object
  :slots ())

(setf (get manage_supermarket::restock :md5sum-) "436aaeb2230331f8d91f79fac15bd4ce")
(setf (get manage_supermarket::restock :datatype-) "manage_supermarket/restock")
(setf (get manage_supermarket::restock :request) manage_supermarket::restockRequest)
(setf (get manage_supermarket::restock :response) manage_supermarket::restockResponse)

(defmethod manage_supermarket::restockRequest
  (:response () (instance manage_supermarket::restockResponse :init)))

(setf (get manage_supermarket::restockRequest :md5sum-) "436aaeb2230331f8d91f79fac15bd4ce")
(setf (get manage_supermarket::restockRequest :datatype-) "manage_supermarket/restockRequest")
(setf (get manage_supermarket::restockRequest :definition-)
      "string name
int64 newStock
---
string feedback
int64 jumlah
")

(setf (get manage_supermarket::restockResponse :md5sum-) "436aaeb2230331f8d91f79fac15bd4ce")
(setf (get manage_supermarket::restockResponse :datatype-) "manage_supermarket/restockResponse")
(setf (get manage_supermarket::restockResponse :definition-)
      "string name
int64 newStock
---
string feedback
int64 jumlah
")



(provide :manage_supermarket/restock "436aaeb2230331f8d91f79fac15bd4ce")


