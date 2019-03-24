#lang racket
;(define midl
;  ((lambda (x y) (/ (+ x y) 2)) 2 4))
;(display midl)
;(define (sum-of-squares x y)(+ (* x x) (* y y)))
;(sum-of-squares 2 3)
(define (sum-of-squares x y)
  (let* ([sum (lambda (m n) (+ m n))])
   (* (sum x y) (sum x y))
  )
)
(sum-of-squares 2 3)
