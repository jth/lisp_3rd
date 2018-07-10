; Problem 7-1
(defun factorial (n)
  (if (zerop n)
      1
      (* n (factorial (1- n)))))

(defun dotimes-factorial (n)
  (let ((result 1))
    (dotimes (i n result)
      (setf result (* result (- n i))))))

; Problem 7-2
(defparameter *freezing* 32)
(defparameter *boiling* 212)

(defun count-outlyers-with-count-if (l)
  (count-if
   #'(lambda (e) (or (< e *freezing*) (> e *boiling*)))
   l))
