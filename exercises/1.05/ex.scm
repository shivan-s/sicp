#lang scheme

; applicative order - p is returned and this is the same for normal order?

(define (p) (p))

(define (test x y)
  (if (= x 0) 
    0
    y))

(test 0 (p))
