; 1
(define (read-lines file-name)
(with-input-from-file file-name
(lambda ()
(let loop((ls1 '()) (c (read-char)) (ls2 '()) (seq #\Linefeed))
(cond
((eqv? c seq) (((let ((s (list->string (reverse ls1)))) (cons s ls2))) (= ls1 '())))
((eof-object? c) (reverse ls2))
(else (loop (cons c ls1) (read-char) ls2 seq)))))))
; answer
(define (group-list ls sep)
  (letrec ((iter (lambda (ls0 ls1)
           (cond
            ((null? ls0) (list ls1))
            ((eqv? (car ls0) sep) 
             (cons ls1 (iter (cdr ls0) '())))
            (else (iter (cdr ls0) (cons (car ls0) ls1)))))))
    (map reverse (iter ls '()))))


(define (read-lines file-name)
  (with-input-from-file file-name
    (lambda ()
      (let loop((ls1 '()) (c (read-char)))
    (if (eof-object? c)
        (map list->string (group-list (reverse ls1) #\Linefeed))  ; *
        (loop (cons c ls1) (read-char)))))))
