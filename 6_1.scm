; 1
(define (my-length ls)
(if (null? ls)
0
(+ 1 (my-length (cdr ls)))))
; 2
(define (sum ls)
(if (null? ls)
0
(+ (car ls) (sum (cdr ls)))))
; 3
(define (remove ls x)
(if (null? ls)
'()
(if (= (car ls) x)
(remove (cdr ls) x)
(cons (car ls) (remove (cdr ls) x)))))
; 4
(define (search ls x)
(if (null? ls)
'#f
(cond
((= (car ls) x) 0)
(else (+ 1 (search (cdr ls) x))))))
