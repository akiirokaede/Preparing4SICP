(define (expsum ls)
(sqrt (reduce + 0  (map (lambda (x) (* x x)) ls))))
