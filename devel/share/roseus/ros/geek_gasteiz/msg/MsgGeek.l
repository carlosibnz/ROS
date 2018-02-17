;; Auto-generated. Do not edit!


(when (boundp 'geek_gasteiz::MsgGeek)
  (if (not (find-package "GEEK_GASTEIZ"))
    (make-package "GEEK_GASTEIZ"))
  (shadow 'MsgGeek (find-package "GEEK_GASTEIZ")))
(unless (find-package "GEEK_GASTEIZ::MSGGEEK")
  (make-package "GEEK_GASTEIZ::MSGGEEK"))

(in-package "ROS")
;;//! \htmlinclude MsgGeek.msg.html


(defclass geek_gasteiz::MsgGeek
  :super ros::object
  :slots (_stamp _num ))

(defmethod geek_gasteiz::MsgGeek
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:num __num) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _num (float __num))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float32 _num
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float32 _num
       (sys::poke _num (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _num
     (setq _num (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get geek_gasteiz::MsgGeek :md5sum-) "2b5fd030953573f8ed3dc9bd836e9962")
(setf (get geek_gasteiz::MsgGeek :datatype-) "geek_gasteiz/MsgGeek")
(setf (get geek_gasteiz::MsgGeek :definition-)
      "time stamp
float32 num

")



(provide :geek_gasteiz/MsgGeek "2b5fd030953573f8ed3dc9bd836e9962")


