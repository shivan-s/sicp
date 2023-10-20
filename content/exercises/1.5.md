---
title: "1.5"
date: 2023-10-14
draft: false
---

```scheme
#lang scheme

; applicative order - p is returned and this is the same for normal order?

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

(exit)
```
