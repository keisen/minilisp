(define minus-1 (+ 1 2147483647 2147483647))
(defun mul (l r) (if (= r 1) (car (list l (println (list 'mul l 1)))) (car (list (+ l (mul l (+ r minus-1))) (println (list 'mul l r))))))
(defun sub (l r) (+ l (mul minus-1 r)))
(defun fact (n) (if (= n 1) 1 (mul n (fact (+ n minus-1)))))
(println (fact 5))
(println 'gc-start)
(gc)
(println 'gc-end)
(exit)
