---
title: "1.4"
date: 2023-10-13
draft: false
---

Evaluate these in your head:

```scheme
; b is checked for positive or negative and this determines the operator for a and b

(define (f a b)
  ((if (> b 0) + -) a b))

(f 1 2)
(f 1 -2)
```
