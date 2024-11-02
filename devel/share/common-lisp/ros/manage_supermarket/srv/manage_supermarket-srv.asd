
(cl:in-package :asdf)

(defsystem "manage_supermarket-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "add_product" :depends-on ("_package_add_product"))
    (:file "_package_add_product" :depends-on ("_package"))
    (:file "delete_product" :depends-on ("_package_delete_product"))
    (:file "_package_delete_product" :depends-on ("_package"))
    (:file "display" :depends-on ("_package_display"))
    (:file "_package_display" :depends-on ("_package"))
    (:file "editharga" :depends-on ("_package_editharga"))
    (:file "_package_editharga" :depends-on ("_package"))
    (:file "jual_product" :depends-on ("_package_jual_product"))
    (:file "_package_jual_product" :depends-on ("_package"))
    (:file "restock" :depends-on ("_package_restock"))
    (:file "_package_restock" :depends-on ("_package"))
  ))