; 1
(define (my-copy-file from to)
(let ((ptr (open-input-file from))
(pto (open-output-file to)))
(let loop((c (read-char ptr)))
(if (eof-object? c)
(begin
(close-input-port ptr)
(close-output-port pto))
(begin
(write-char c pto)
(loop (read-char ptr)))))))
