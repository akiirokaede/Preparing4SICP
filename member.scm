(define (member proc obj ls)
(cond 
((null? ls) '())
((proc obj (car ls)) (cons (car ls) (member proc obj (cdr ls))))
(else (member proc obj (cdr ls)))))
