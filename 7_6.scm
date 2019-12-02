; 1
(define (my-keep-matching-items proc ls)
(cond
((null? ls) '())
((proc (car ls)) (cons (car ls) (my-keep-matching-items proc (cdr ls))))
(else (my-keep-matching-items proc (cdr ls)))))
; 2
(define (my-map func . lss)
(letrec ((iter (lambda (func lss)
(if (null? lss) '()
(cons (func (car lss))
(iter func (cdr lss))))))
(map-rec (lambda (func lss)
(if (memq '() lss)
'()
(cons (apply func (iter car lss))
(map-rec func (iter cdr lss)))))))
(map-rec func lss)))
