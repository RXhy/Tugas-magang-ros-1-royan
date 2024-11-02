;; Auto-generated. Do not edit!


(when (boundp 'manage_supermarket::display)
  (if (not (find-package "MANAGE_SUPERMARKET"))
    (make-package "MANAGE_SUPERMARKET"))
  (shadow 'display (find-package "MANAGE_SUPERMARKET")))
(unless (find-package "MANAGE_SUPERMARKET::DISPLAY")
  (make-package "MANAGE_SUPERMARKET::DISPLAY"))
(unless (find-package "MANAGE_SUPERMARKET::DISPLAYREQUEST")
  (make-package "MANAGE_SUPERMARKET::DISPLAYREQUEST"))
(unless (find-package "MANAGE_SUPERMARKET::DISPLAYRESPONSE")
  (make-package "MANAGE_SUPERMARKET::DISPLAYRESPONSE"))

(in-package "ROS")





(defclass manage_supermarket::displayRequest
  :super ros::object
  :slots (_display ))

(defmethod manage_supermarket::displayRequest
  (:init
   (&key
    ((:display __display) "")
    )
   (send-super :init)
   (setq _display (string __display))
   self)
  (:display
   (&optional __display)
   (if __display (setq _display __display)) _display)
  (:serialization-length
   ()
   (+
    ;; string _display
    4 (length _display)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _display
       (write-long (length _display) s) (princ _display s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _display
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _display (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass manage_supermarket::displayResponse
  :super ros::object
  :slots (_output ))

(defmethod manage_supermarket::displayResponse
  (:init
   (&key
    ((:output __output) "")
    )
   (send-super :init)
   (setq _output (string __output))
   self)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:serialization-length
   ()
   (+
    ;; string _output
    4 (length _output)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _output
       (write-long (length _output) s) (princ _output s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _output
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _output (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass manage_supermarket::display
  :super ros::object
  :slots ())

(setf (get manage_supermarket::display :md5sum-) "85fe84f26349bbc9952465d8d14f21f4")
(setf (get manage_supermarket::display :datatype-) "manage_supermarket/display")
(setf (get manage_supermarket::display :request) manage_supermarket::displayRequest)
(setf (get manage_supermarket::display :response) manage_supermarket::displayResponse)

(defmethod manage_supermarket::displayRequest
  (:response () (instance manage_supermarket::displayResponse :init)))

(setf (get manage_supermarket::displayRequest :md5sum-) "85fe84f26349bbc9952465d8d14f21f4")
(setf (get manage_supermarket::displayRequest :datatype-) "manage_supermarket/displayRequest")
(setf (get manage_supermarket::displayRequest :definition-)
      "string display
---
string output
")

(setf (get manage_supermarket::displayResponse :md5sum-) "85fe84f26349bbc9952465d8d14f21f4")
(setf (get manage_supermarket::displayResponse :datatype-) "manage_supermarket/displayResponse")
(setf (get manage_supermarket::displayResponse :definition-)
      "string display
---
string output
")



(provide :manage_supermarket/display "85fe84f26349bbc9952465d8d14f21f4")


