#lang racket
;(define midl
;  ((lambda (x y) (/ (+ x y) 2)) 2 4))
;(display midl)
;(define (sum-of-squares x y)(+ (* x x) (* y y)))
;(sum-of-squares 2 3)

;недоделанная реализация через let. нужно сделать
(define (sum-of-squares x y)
  (let* ([sum (lambda (m n) (+ m n))])
   (* (sum x y) (sum x y))
  )
)
(sum-of-squares 2 3)
; альтернативная рабочая реализация через define ниже
(define (sum x y) (+ x y))
(define (square-of-sum x y)
          (* (sum x y) (sum x y)))
(square-of-sum 2 3)