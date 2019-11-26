; arg add 1
(define (plusone x) (+ x 1))

; arg minus 1
(define (minusone x) (- x 1))

; exact pi
(define pi (* 4 (atan 1.0)))
(define (hudu x) (* pi (/ x 180)))
(define (hv x v) (* v (cos (hudu x))))
(define (vv x v) (* v (sin (hudu x))))
(define (t x v) (/ (* 2 (vv x v)) 9.8))
(define (distance x v) (* (hv x v) (t x v)))
