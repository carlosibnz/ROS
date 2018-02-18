;; Auto-generated. Do not edit!


(when (boundp 'geek_gasteiz::SrvGeek)
  (if (not (find-package "GEEK_GASTEIZ"))
    (make-package "GEEK_GASTEIZ"))
  (shadow 'SrvGeek (find-package "GEEK_GASTEIZ")))
(unless (find-package "GEEK_GASTEIZ::SRVGEEK")
  (make-package "GEEK_GASTEIZ::SRVGEEK"))
(unless (find-package "GEEK_GASTEIZ::SRVGEEKREQUEST")
  (make-package "GEEK_GASTEIZ::SRVGEEKREQUEST"))
(unless (find-package "GEEK_GASTEIZ::SRVGEEKRESPONSE")
  (make-package "GEEK_GASTEIZ::SRVGEEKRESPONSE"))

(in-package "ROS")





(defclass geek_gasteiz::SrvGeekRequest
  :super ros::object
  :slots (_x _y ))

(defmethod geek_gasteiz::SrvGeekRequest
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int64 _x
    8
    ;; int64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _x) (= (length (_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_x . bv) 0) 0) s)
              (write-long (ash (elt (_x . bv) 1) -1) s))
             ((and (class _x) (= (length (_x . bv)) 1)) ;; big1
              (write-long (elt (_x . bv) 0) s)
              (write-long (if (>= _x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _x s)(write-long (if (>= _x 0) 0 #xffffffff) s)))
     ;; int64 _y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _y) (= (length (_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_y . bv) 0) 0) s)
              (write-long (ash (elt (_y . bv) 1) -1) s))
             ((and (class _y) (= (length (_y . bv)) 1)) ;; big1
              (write-long (elt (_y . bv) 0) s)
              (write-long (if (>= _y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _y s)(write-long (if (>= _y 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _x
#+(or :alpha :irix6 :x86_64)
      (setf _x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _y
#+(or :alpha :irix6 :x86_64)
      (setf _y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass geek_gasteiz::SrvGeekResponse
  :super ros::object
  :slots (_mul ))

(defmethod geek_gasteiz::SrvGeekResponse
  (:init
   (&key
    ((:mul __mul) 0)
    )
   (send-super :init)
   (setq _mul (round __mul))
   self)
  (:mul
   (&optional __mul)
   (if __mul (setq _mul __mul)) _mul)
  (:serialization-length
   ()
   (+
    ;; int64 _mul
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _mul
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mul (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mul) (= (length (_mul . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mul . bv) 0) 0) s)
              (write-long (ash (elt (_mul . bv) 1) -1) s))
             ((and (class _mul) (= (length (_mul . bv)) 1)) ;; big1
              (write-long (elt (_mul . bv) 0) s)
              (write-long (if (>= _mul 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mul s)(write-long (if (>= _mul 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _mul
#+(or :alpha :irix6 :x86_64)
      (setf _mul (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mul (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass geek_gasteiz::SrvGeek
  :super ros::object
  :slots ())

(setf (get geek_gasteiz::SrvGeek :md5sum-) "2071066d24f0fa7611852ac3152d1d50")
(setf (get geek_gasteiz::SrvGeek :datatype-) "geek_gasteiz/SrvGeek")
(setf (get geek_gasteiz::SrvGeek :request) geek_gasteiz::SrvGeekRequest)
(setf (get geek_gasteiz::SrvGeek :response) geek_gasteiz::SrvGeekResponse)

(defmethod geek_gasteiz::SrvGeekRequest
  (:response () (instance geek_gasteiz::SrvGeekResponse :init)))

(setf (get geek_gasteiz::SrvGeekRequest :md5sum-) "2071066d24f0fa7611852ac3152d1d50")
(setf (get geek_gasteiz::SrvGeekRequest :datatype-) "geek_gasteiz/SrvGeekRequest")
(setf (get geek_gasteiz::SrvGeekRequest :definition-)
      "int64 x
int64 y
---
int64 mul

")

(setf (get geek_gasteiz::SrvGeekResponse :md5sum-) "2071066d24f0fa7611852ac3152d1d50")
(setf (get geek_gasteiz::SrvGeekResponse :datatype-) "geek_gasteiz/SrvGeekResponse")
(setf (get geek_gasteiz::SrvGeekResponse :definition-)
      "int64 x
int64 y
---
int64 mul

")



(provide :geek_gasteiz/SrvGeek "2071066d24f0fa7611852ac3152d1d50")


