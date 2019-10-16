;; by: Bryce Allen
;; 4/20/18
;; cs 214 lab10 elisp portion

;; PART 1

(lambda (x) (+ x x))

((lambda (x) (+ x x)) 17)

34


;; exercise 1a
(lambda (a b c d) (max (abs a) (abs b) (abs c) (abs d)))

;;test
((lambda (a b c d) (max (abs a) (abs b) (abs c) (abs d))) 1 2 3 4)

4

;; exercise 1b
((lambda (x y z) (+ x y z)) 1 2 3)

6

((lambda (x) (null x)) 2)

nil

((lambda () 17.2))

17.2

;; PART 2

(function abs)

abs

#'abs

abs


(setq double (function (lambda (x) (+ x x)) ))

(funcall double 11)

22

(setq triple (function (lambda (x) (+ x x x)) ))

(lambda (x) (+ x x x))

(funcall triple 11)

33

;; exercise 2

(defun sum-squares (a)
  (+ (* (car a) (car a)) (* (car (cdr a)) (car (cdr a))) (* (car (cdr (cdr a))) (car (cdr (cdr a))))))

sum-squares

(sum-squares '(1 2 3))

14

(sum-squares '(1 2 3 4 5))

14

(sum-squares '(-1 -2 -3 0 1))

14


