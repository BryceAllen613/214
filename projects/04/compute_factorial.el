;;;compute_factorial.el
;;;Computes Factorialization of given number
;;;2/24/18
;;;by: Bryce Allen
;;;cs 214 at Calvin College
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun computeFactorial (n)
  (cond ((> n 1) (* n (computeFactorial (- n 1))))
	((= n 1) 1)
	(1)))


(defun main(num)
  (interactive "nEnter a number: ")
    (setq number (computeFactorial num))
    (message "Factorialization is %f" number))


