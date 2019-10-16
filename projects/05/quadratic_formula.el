;;quadratic_formula.el computes a quadratic roots given coefficents
;;
;;by: Bryce Allen
;;3/5/17
;;cs 214
;;Calvin College
;;;;;;;;;;;;;;;;

(defun quadraticFormula(a b c)
  (setq var1(sqrt (- (expt b 2) (* (* 4 a) c))))
  (setq root1 (/ (+ (* b -1) var1) (* 2 a)))
  (setq root2 (/ (- (* b -1) var1) (* 2 a)))
  (cond ((= a 0) "invalid input.")
	((< var1 0) "invalid input")
	("valid input"))
  (message "Roots are %f and %f" root1 root2))


quadraticFormula
(quadraticFormula 1 1 0)
"Roots are 0.000000 and -1.000000"


(defun quadratic_formula (a b c)
    (interactive "nEnter the a b and c coefficents: ")
    (quadraticFormula a b c))

quadratic_formula
(quadratic_formula 1 1 0)

"Roots are 0.000000 and -1.000000"
  
