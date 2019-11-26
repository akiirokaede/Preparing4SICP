; if all the numbers > 0, return their multiple
(define (mul>0 x y z) (if (and (> x 0) (> y 0) (> z 0))
(* x y z)
-1))
(define (mul<0 x y z) (if (or (< x 0) (< y 0) (< z 0))
(* x y z)
-1))
