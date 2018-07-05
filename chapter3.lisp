;;;; lisp-3rd.lisp

(in-package #:lisp-3rd)

;;;; Exercises Chapter 3, p.43

(defun exchange (two-element-list)
  (list (cadr two-element-list) (first two-element-list)))

(defun construct (a b)
  (cons a b))

(defun rotate-left (l)
  (append (rest l) (list (first l))))

(defun rotate-right (l)
  (append (last l) (butlast l)))

(defun palindromize (l)
  (append l (reverse l)))

(defun f-to-c (f)
  (- (* (+ f 40) 5/9) 40))

(defun c-to-f (c)
  (- (* (+ c 40) 9/5) 40))
