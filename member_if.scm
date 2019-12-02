(define (member-if proc ls)
  (cond
   ((null? ls) '())
   ((proc (car ls)) (cons (car ls) (member-if proc (cdr ls))))
   (else (member-if proc (cdr ls)))))
