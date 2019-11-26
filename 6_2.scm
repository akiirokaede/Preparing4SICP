; 1
(define (my-reverse ls)
(reverse-rec ls '()))
(define (reverse-rec ls1 ls2)
(if (null? ls1)
ls2
(reverse-rec (cdr ls1) (cons (car ls1) ls2))))
; 2
(define (my-sum ls)
(sum-rec ls 0))
(define (sum-rec ls num)
(if (null? ls)
num
(sum-rec (cdr ls) (+ num (car ls)))))
; 3
(define (str2num str)
(let ((ls (string->list str))) (str2num-rec ls 0)))
(define (str2num-rec ls num)
(if (null? ls)
num
(str2num-rec (cdr ls) (+ (* num 10) (- (char->integer (car ls)) 48)))))
