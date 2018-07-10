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

; Problem 5-5
(defun tower-of-hanoi (disks)
  (if (endp disks)
      0
      (+ 1 (* 2 (tower-of-hanoi (rest disks))))))

; Resolves recursion '(2 1):
; (+ 1 (* 2 (tower-of-hanoi '(1))))
;   (+ 1 (* 2 (tower-of-hanoi '())))
;      0 <-- unfolds recursion
;   (+ 1 (* 2 0))
; (+1 (* 2 1))
; 3

; Problem 5-6
; In Other words: How deep is the given expression nested?
(defun mystery (s)
  (cond ((null s) 1)
        ((atom s) 0)
        (t (max (+ (mystery (first s)) 1)
                (mystery (rest s))))))

; Problem 5-7
; Returns exactly the same list as a copy
(defun strange (l)
  (cond ((null l) nil)
        ((atom l) l)
        (t (cons (strange (first l))
                 (strange (rest l))))))

; Problem 5-8
(defun presentp (sym exp)
  (cond ((eql sym exp) t)
        ((atom exp) nil) ; catches empty lists
        (t (or (presentp sym (first exp))
               (presentp sym (rest exp))))))

(defun sum-nested (l)
  (cond ((null l) 0)
        ((atom l) l)
        (t (+ (sum-nested (first l))
              (sum-nested (rest l))))))
