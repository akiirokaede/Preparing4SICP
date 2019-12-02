; 1
(define (sort-sin ls)
(sort (map sin ls) >))
; 2
(define (sort-len ls)
(sort ls (lambda (l1 l2) (> (length l1) (length l2)))))
