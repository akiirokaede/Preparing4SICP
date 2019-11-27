; 1
(define (my-reverse ls)
(letrec ((iter (lambda (ls1 ls2)
(if (null? ls1)
ls2
(iter (cdr ls1) (cons (car ls1) ls2))))))
(iter ls '())))
; 2
(define (my-sum ls)
(letrec ((iter (lambda (ls1 num)
(if (null? ls1)
num
(iter (cdr ls1) (+ num (car ls1)))))))
(iter ls 0)))
; 3
(define (str2num str)
(let ((strlist (string->list str)))
(letrec ((iter (lambda (ls num)
(if (null? ls)
num
(iter (cdr ls) (+ (* num 10) (- (char->integer (car ls)) 48)))))))
(iter strlist 0))))
