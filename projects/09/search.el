;; search.el searches for a integer in a list
;; cs 214
;; Project 9
;; Calvin College
;; By Bryce Allen
;; 4/16/18

;; helper method for search
;; recieves a list, a value, and postion tracker
;; returns position of the value in the list
(defun searcher(aList aValue pos)
  (if (= (car aList) aValue) pos
    (setq pos (+ pos 1))
    (searcher(cdr aList) aValue pos)))


;; initializer method for searcher
;; rceives a list and a value
;; returns the position of the value
(defun search(aList aValue)
  (setq pos 0)
  (if (searcher aList aValue pos) (searcher aList aValue pos)
    nil))

