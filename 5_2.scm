; return the absolute value
(define (abs x) (if (< x 0)
(- x)
x))

; return reciprocal
(define (reciprocal x) (if (= x 0)
'#f
(/ 1 x)))

; return ascii character
(define (numtochar x) (if (and (<= x 126) (>= x 33))
(integer->char x)
'#f))
