;;; nameTester.el simulates and tests an e-LISP Name type.
;;;
;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;; Completed by: Bryce Allen
;;; Date: 4/5/18
;;;

(setq load-path (cons "/home/bda5/214/labs/08/e-lisp" load-path))
(load "Name.elc")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; A simple driver for our Name functions. ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(progn
  (require 'cl)                              ; Common Lisp's assert
  (setq aName (Name "John" "Paul" "Jones"))  ; build a Name
  (assert (equal (getFirst aName) "John" ))  ; test it
  (assert (equal (getMiddle aName) "Paul" ))
  (assert (equal (getLast aName) "Jones" ))
  (assert (equal (getFullName aName) "John Paul Jones" ))

  (setq buf (get-buffer "nameTester.el"))    ; buf = this buffer
  (assert (eq (printName aName buf) aName) )
  (terpri buf)                               ; newline
  (princ "All tests passed!" buf)            ; feedback
  (terpri buf))                              ; newline


John Paul Jones
All tests passed!
