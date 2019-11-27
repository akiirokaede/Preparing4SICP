; 1
(define (do-reverse ls)
(do ((ls1 ls (cdr ls1)) (ls2 '() (cons (car ls1) ls2))) ((null? ls1) ls2)))
; 2
(define (do-sum ls)
(do ((numlist ls (cdr numlist)) (num 0 (+ num (car numlist)))) ((null? numlist) num)))
; 3
(define (do-str2num str)
(let ((strlist (string->list str)))
(do ((strl strlist (cdr strl)) (num 0 (+ (* 10 num) (- (char->integer (car strl)) 48)))) ((null? strl) num))))
