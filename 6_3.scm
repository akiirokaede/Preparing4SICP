; 1
(define (remove ls x)
(let loop((ls1 ls) (ls2 '()))
(if (null? ls1)
(reverse ls2)
(if (= (car ls1) x)
(loop (cdr ls1) ls2)
(loop (cdr ls1) (cons (car ls1) ls2))))))
; 2
(define (search ls x)
(let loop((ls1 ls) (index 0))
(if (null? ls1)
'#f
(if (= (car ls1) x)
index
(loop (cdr ls1) (+ index 1))))))
; 3
(define (my-reverse ls)
(let loop((ls1 ls) (ls2 '()))
(if (null? ls1)
ls2
(loop (cdr ls1) (cons (car ls1) ls2)))))
; 4
(define (my-sum ls)
(let loop((ls1 ls) (num 0))
(if (null? ls1)
num
(loop (cdr ls1) (+ (car ls1) num)))))
; 5
(define (str2num str)
(let ((strlist (string->list str)))
(let loop((ls strlist) (num 0))
(if (null? ls)
num
(loop (cdr ls) (+ (* num 10) (- (char->integer (car ls)) 48)))))))
; 6
(define (range n)
(let loop((ls '()) (i (- n 1)))
(if (< i 0)
ls
(loop (cons i ls) (- i 1)))))
