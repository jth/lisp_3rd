; Problem 5-1
(defun skip-first-n (n l)
  (cond
    ((null l) nil)
    ((eql n 0) l)
    (t (skip-first-n (1- n) (rest l)))))

; Problem 5-3 ()
(defun keep-first-n (n l)
  (if (eql n 0) nil
      (cons (first l) (keep-first-n (1- n) (rest l)))))

; Problem 5-3 (You may assume there are at least n elements)
(defun keep-first-n-cleverly-aux (n l result)
  (if (zerop n) (reverse result)
      (keep-first-n-cleverly-aux (1- n)
                                 (rest l)
                                 (cons (first l) result))))

(defun keep-first-n-cleverly (n l)
  (keep-first-n-cleverly-aux n l nil))

; Problem 5-4
(defun add (x y)
  (if (zerop y)
      x
      (add (1+ x) (1- y))))
