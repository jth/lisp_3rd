; Problem 11-1
(defun grandfather (grandson)
  (get (get grandson 'father) 'father))

; Problem 11-2
(defun adam (person)
  (let ((father (get person 'father)))
    (if father (adam father) person)))


; Problem 11-3
(defun gen-testdata ()
  (setf (get (setf (get 'patrick 'mother) 'dorothy) 'mother) 'linda)
  (setf (get (setf (get 'patrick 'father) 'bill) 'father) 'bob)
  t)

(defun ancestors-spec (person parent-type)
  (let ((parent (get person parent-type)))
    (if parent
        (cons person (ancestors-spec parent parent-type))
        person)))

(defun ancestors (person)
  (list 'person (list (ancestors-spec (get person 'father) 'father)
                      (ancestors-spec (get person 'mother) 'mother))))

; Simpler solution from book
(defun ancestors-simpler (person)
  (when person
    ; append: simply concatenate two lists
    (cons person (append (ancestors-simpler (get person 'father))
                         (ancestors-simpler (get person 'mother))))))

; Problem 11-4



; Problem 11-5
