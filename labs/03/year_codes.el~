;;; year_codes.el is a driver for function yearcode.
;;; begun by: dr. adams, for cs 214 at calvin college.
;;; completed by: bryce allen for cs 214 at calvin colelge

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; yearcode returns the code for a given academic year.                 ;;;
;;; receive: year, a string.                                             ;;;
;;; precondition: year is one of {freshman, sophomore, junior or senior}.;;;
;;; return: the integer code corresponding to year.                      ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun yearcode (year)
  (if (equal year "freshman") (1)
  (else (if (equal year "sophomore") (2)
  (else (if (equal year "junior") (3)
  (else (if (equal year "senior") (4)
     (else (0))))))))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; main function                        ;;;
;;; input: year                          ;;;
;;; output: code corresponding to year   ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun main (year)
 (interactive "senter your academic year: ")  ; read year
 (message "%d" (yearcode year)))              ; display its code



;;; tests...
(main "junior")

(yearcode "junior")



