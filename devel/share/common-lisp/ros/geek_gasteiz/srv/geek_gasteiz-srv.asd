
(cl:in-package :asdf)

(defsystem "geek_gasteiz-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SrvGeek" :depends-on ("_package_SrvGeek"))
    (:file "_package_SrvGeek" :depends-on ("_package"))
  ))