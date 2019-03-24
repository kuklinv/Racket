#lang racket
; sum-of-squares-of-top-two принимает три числа и возвращает сумму квадратов двух наибольших чисел.
;
;maxTwo: if x < y & x < z return y z
;        else if y < z return x z
;        else return x y
(define (maxTwo x y z)
  (cond [(and ((> y x) (> z x))) (y z)]
        [(> z y) (x z)]
        [else (x y)]         
   )
)
(define (summ x y) ; ok
  (+ x y)
)
(define (squares x y) (* x y)) ; ok

(define (sum-of-squares-of-top-two x y z) ; ok
  (summ (squares (maxTwo x y z)))
)
(sum-of-squares-of-top-two 5 9 10)