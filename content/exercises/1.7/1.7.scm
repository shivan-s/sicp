#lang scheme

(define (square n)
  (* n n))

(define (good-enough? guess x)
  (or (>= (+ x 0.001) (square guess)) (<= (- x 0.001) (square guess))))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))


(good-enough? 2 4)
(good-enough? 2 9)

(sqrt-iter 1 4)
