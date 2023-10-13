#lang scheme

; b is checked for postive or negative and this determines the operator for a and b

(define (f a b)
  ((if (> b 0) + -) a b))

(f 1 2)
(f 1 -2)