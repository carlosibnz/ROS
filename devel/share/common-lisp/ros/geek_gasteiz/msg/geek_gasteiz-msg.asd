
(cl:in-package :asdf)

(defsystem "geek_gasteiz-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MsgGeek" :depends-on ("_package_MsgGeek"))
    (:file "_package_MsgGeek" :depends-on ("_package"))
  ))