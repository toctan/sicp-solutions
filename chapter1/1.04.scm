;; Exercise 1.4

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; The above procedure returns the sum of a the absolute value of b
