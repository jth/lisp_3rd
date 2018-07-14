; Learn how to use the debugger
(defun to-debug (x y)
  (let ((z (+ x y)))
    (setf z (- z x y))
    (* z 5)))
