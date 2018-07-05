; Problem 4-1
(defun divisible-by-three (num)
  (= (rem num 3) 0))

; Problem 4-2
(defun palindromep (l)
  (equal l (reverse l)))

(defun delta-compare (f1 f2)
  (< (abs (- f1 f2)) (* (/ f1 100) 2)))

; Problem 4-3
; Problem 4-5
(defun if-abs (n)
  (if (< n 0) (* n -1) n))

(defun rightp (s1 s2 s3)
  (delta-compare (expt s1 2) (+ (expt s2 2) (expt s3 2))))

(defun if-min (a b)
  (if (> a b) b a))

(defun if-max (a b)
  (if (> a b) a b))

; Problem 4-6
(defun cond-not (u)
  (cond ((eq u nil) t)
        (t nil)))

(defun cond-or (x y z)
  (cond ((eq x t) t)
        ((eq y t) t)
        ((eq z t) t)
        (t nil)))

(defun cond-and (x y z)
  (cond ((eq x nil) nil)
        ((eq y nil) nil)
        ((eq z nil) nil)
        (t t)))

; Problem 4-7
(defun check-temperature (temp)
  (cond ((> temp 100) 'ridiculously-hot)
         ((< temp 0) 'ridiculously-cold)
         (t 'ok)))
