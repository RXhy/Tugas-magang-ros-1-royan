;; Auto-generated. Do not edit!


(when (boundp 'manage_supermarket::delete_product)
  (if (not (find-package "MANAGE_SUPERMARKET"))
    (make-package "MANAGE_SUPERMARKET"))
  (shadow 'delete_product (find-package "MANAGE_SUPERMARKET")))
(unless (find-package "MANAGE_SUPERMARKET::DELETE_PRODUCT")
  (make-package "MANAGE_SUPERMARKET::DELETE_PRODUCT"))
(unless (find-package "MANAGE_SUPERMARKET::DELETE_PRODUCTREQUEST")
  (make-package "MANAGE_SUPERMARKET::DELETE_PRODUCTREQUEST"))
(unless (find-package "MANAGE_SUPERMARKET::DELETE_PRODUCTRESPONSE")
  (make-package "MANAGE_SUPERMARKET::DELETE_PRODUCTRESPONSE"))

(in-package "ROS")





(defclass manage_supermarket::delete_productRequest
  :super ros::object
  :slots (_name ))

(defmethod manage_supermarket::delete_productRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass manage_supermarket::delete_productResponse
  :super ros::object
  :slots (_feedback ))

(defmethod manage_supermarket::delete_productResponse
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

(defclass manage_supermarket::delete_product
  :super ros::object
  :slots ())

(setf (get manage_supermarket::delete_product :md5sum-) "a4a7378fbe2cb6f7c7e5e0c2db2ce3e6")
(setf (get manage_supermarket::delete_product :datatype-) "manage_supermarket/delete_product")
(setf (get manage_supermarket::delete_product :request) manage_supermarket::delete_productRequest)
(setf (get manage_supermarket::delete_product :response) manage_supermarket::delete_productResponse)

(defmethod manage_supermarket::delete_productRequest
  (:response () (instance manage_supermarket::delete_productResponse :init)))

(setf (get manage_supermarket::delete_productRequest :md5sum-) "a4a7378fbe2cb6f7c7e5e0c2db2ce3e6")
(setf (get manage_supermarket::delete_productRequest :datatype-) "manage_supermarket/delete_productRequest")
(setf (get manage_supermarket::delete_productRequest :definition-)
      "string name
---
string feedback
")

(setf (get manage_supermarket::delete_productResponse :md5sum-) "a4a7378fbe2cb6f7c7e5e0c2db2ce3e6")
(setf (get manage_supermarket::delete_productResponse :datatype-) "manage_supermarket/delete_productResponse")
(setf (get manage_supermarket::delete_productResponse :definition-)
      "string name
---
string feedback
")



(provide :manage_supermarket/delete_product "a4a7378fbe2cb6f7c7e5e0c2db2ce3e6")


