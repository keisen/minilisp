(defun last (lst)
  (if (cdr lst)
    (last (cdr lst))
    (car lst)))

(defmacro unlist (lst)
  (if (cdr lst)
    (list 'cons (car lst) (list 'unlist (cdr lst)))
    (list 'list (car lst))))

(defmacro progn (lst)
  (list 'last (list 'unlist lst)))


(println 'progn-macro-test-1)
(progn ((println 'hello)
        (println 'world)))

(println 'progn-macro-test-2)
(println (progn ((println 'hello)
                 (println 'world)
                 (+ 1 1))))

(exit)