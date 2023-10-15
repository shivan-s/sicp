---
title: "1.8"
date: 2023-10-16
draft: false
---

## Answer


```scheme
(define (square n)
  (* n n))

(define (cube n)
  (* n n n)
  )

(define (good-enough? guess x)
  (and (>= (+ x 0.001) (cube guess)) (<= (- x 0.001) (cube guess))))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))

(define (cube-iter guess x)
  (if (good-enough? guess x)
    guess
    (cube-iter (improve guess x) x)))

(good-enough? 2 4)
(good-enough? 2 9)
(good-enough? 3 27)

(cube-iter 8 9)
```
