#lang scheme

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;; sqrt-iter will take the guess and if check against good-enough. If the guess
;; is not withthin the bounds, then the function will continue to run recursively
;; until the base condition is satisfied.
