(define (sqrtsum ls)
(sqrt (apply + (map (lambda (x) (* x x)) ls))))
