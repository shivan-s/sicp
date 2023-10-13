#lang scheme

(define (square n)
  (* n n)
  )

(define (sum-of-squares x y)
  (+ (square x)(square y))
  )

; determine the smallest value, then by exclusion you will have the two 
;   largest number

(define (sum-of-squares-of-two x y z)
  (cond ((and (> (square x) (square z)) (> (square y) (square z))) 
         (sum-of-squares x y))
        ((and (> (square x) (square y)) (> (square z) (square y))) 
         (sum-of-squares x z))
        ((and (> (square y) (square x)) (> (square z) (square x))) 
         (sum-of-squares y z))
        (else (sum-of-squares x y))
        ))

(sum-of-squares-of-two 2 4 6)
(sum-of-squares-of-two 6 4 2)
(sum-of-squares-of-two 2 4 6)
(sum-of-squares-of-two 2 4 -6)
(sum-of-squares-of-two 6 6 6)
