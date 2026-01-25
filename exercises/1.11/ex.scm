#lang scheme

; Recursive
(define (F n)
  (cond ((< n 3) n)
    (else (+ (F (- n 1))
               (* 2 (F (- n 2)))
               (* 3 (F (- n 3)))))));

(display "recursive\n")
(F 1);
(F 2);
(F 3);
(F 4);
(F 5);
(F 6);
(F 30);
(F 33) ; slow on my machine

; help - https://opncd.ai/share/5YUzZvY7

; f(0) = 0
; f(1) = 1
; f(2) = 2

; f(3) = f(2) + 2 * f(1) + 3 * f(0) = 2 + 2 * 1 + 3 * 0 = 2 + 2 + 0 = 4
; f(4) = f(3) + 2 * f(2) + 3 * f(1) = 4 + 2 * 2 + 3 * 1 = 4 + 4 + 3 = 11
; f(5) = f(4) + 2 * f(3) + 3 * f(2) = 11 + 2 * 4 + 3 * 2 = 11 + 8 + 6 = 25
; f(6) = f(5) + 2 * f(4) + 3 * f(3) = 25 + 2 * 11 + 3 * 4 = 25 + 22 + 12 = 59

; Iterative
(define (F2 n)
  (cond ((< n 3) n)
  (else (F2-iter 2 1 0 n))));

(define (F2-iter a b c count)
  (cond ((= count 2) a)
	(else (F2-iter (+ a (* 2 b) (* 3 c)) a b (- count 1)))))

(display "iterative\n")
(F2 1)
(F2 2)
(F2 3)
(F2 4)
(F2 5)
(F2 6)
(F2 30)
(F2 33)
