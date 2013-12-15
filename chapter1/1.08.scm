;; Exercise 1.8

;; The code is the same to to exercise 1.7 except the improve function

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
   3))
