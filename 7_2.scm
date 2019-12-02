; 1
(define (filtereven ls)
(keep-matching-items ls even?))
; 2
(define (filternum ls)
(keep-matching-items ls (lambda (x) (or (<= x 10) (>= x 100)))))
