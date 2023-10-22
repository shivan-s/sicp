#lang scheme

(define (+ a b)
  (if (= a 0) b (inc (+ (dec a) b))))


(+ 4 5)
  (if (= 4 0) 5 (inc (+ (dec 4) 5))))
(+ 3 6)
(+ 2 7)
(+ 1 8)
(+ 0 9)

(define (another+ a b)
  (if (= a 0) b (+ (dec a) (inc b))))
