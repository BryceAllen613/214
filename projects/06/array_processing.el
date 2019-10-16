
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;array_processing.el processes an array (prints all elements)
;;by: Bryce Allen
;;cs-214 @ Calvin College
;;3/26/18
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defun printArray (anArray itsSize)
  (if (vectorp anArray)
      (if (<= itsSize 0)
          0.0
        (message " %f " (aref anArray (- itsSize 1)))
	(printArray anArray (- itsSize 1))))
  nil)

printArray

(printArray [9.0 8.0 7.0] 0.0)

nil


(defun main (arr)
  (message "Here is the contents of the array: ")
  (printArray arr (length arr)))
  
main

(main [9.0 8.0 7.0])

nil
