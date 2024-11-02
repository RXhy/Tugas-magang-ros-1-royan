;; Auto-generated. Do not edit!


(when (boundp 'manage_supermarket::editharga)
  (if (not (find-package "MANAGE_SUPERMARKET"))
    (make-package "MANAGE_SUPERMARKET"))
  (shadow 'editharga (find-package "MANAGE_SUPERMARKET")))
(unless (find-package "MANAGE_SUPERMARKET::EDITHARGA")
  (make-package "MANAGE_SUPERMARKET::EDITHARGA"))
(unless (find-package "MANAGE_SUPERMARKET::EDITHARGAREQUEST")
  (make-package "MANAGE_SUPERMARKET::EDITHARGAREQUEST"))
(unless (find-package "MANAGE_SUPERMARKET::EDITHARGARESPONSE")
  (make-package "MANAGE_SUPERMARKET::EDITHARGARESPONSE"))

(in-package "ROS")





(defclass manage_supermarket::edithargaRequest
  :super ros::object
  :slots (_name _newHarga ))

(defmethod manage_supermarket::edithargaRequest
  (:init
   (&key
    ((:name __name) "")
    ((:newHarga __newHarga) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _newHarga (float __newHarga))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:newHarga
   (&optional __newHarga)
   (if __newHarga (setq _newHarga __newHarga)) _newHarga)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _newHarga
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _newHarga
       (sys::poke _newHarga (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _newHarga
     (setq _newHarga (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass manage_supermarket::edithargaResponse
  :super ros::object
  :slots (_harga_baru ))

(defmethod manage_supermarket::edithargaResponse
  (:init
   (&key
    ((:harga_baru __harga_baru) "")
    )
   (send-super :init)
   (setq _harga_baru (string __harga_baru))
   self)
  (:harga_baru
   (&optional __harga_baru)
   (if __harga_baru (setq _harga_baru __harga_baru)) _harga_baru)
  (:serialization-length
   ()
   (+
    ;; string _harga_baru
    4 (length _harga_baru)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _harga_baru
       (write-long (length _harga_baru) s) (princ _harga_baru s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _harga_baru
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _harga_baru (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass manage_supermarket::editharga
  :super ros::object
  :slots ())

(setf (get manage_supermarket::editharga :md5sum-) "568b19a2ce38f33eeb2158cd05ab5278")
(setf (get manage_supermarket::editharga :datatype-) "manage_supermarket/editharga")
(setf (get manage_supermarket::editharga :request) manage_supermarket::edithargaRequest)
(setf (get manage_supermarket::editharga :response) manage_supermarket::edithargaResponse)

(defmethod manage_supermarket::edithargaRequest
  (:response () (instance manage_supermarket::edithargaResponse :init)))

(setf (get manage_supermarket::edithargaRequest :md5sum-) "568b19a2ce38f33eeb2158cd05ab5278")
(setf (get manage_supermarket::edithargaRequest :datatype-) "manage_supermarket/edithargaRequest")
(setf (get manage_supermarket::edithargaRequest :definition-)
      "string name
float64 newHarga
---
string harga_baru
")

(setf (get manage_supermarket::edithargaResponse :md5sum-) "568b19a2ce38f33eeb2158cd05ab5278")
(setf (get manage_supermarket::edithargaResponse :datatype-) "manage_supermarket/edithargaResponse")
(setf (get manage_supermarket::edithargaResponse :definition-)
      "string name
float64 newHarga
---
string harga_baru
")



(provide :manage_supermarket/editharga "568b19a2ce38f33eeb2158cd05ab5278")


