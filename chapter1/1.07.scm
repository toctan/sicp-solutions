;; Exercise 1.7

;; The problem with very small numbers is the approximation may end to
;; early leading to significantly inaccurate results. Since we have an
;; explicit value 0.001 in good-enough?, the procedure will give
;; inaccurate result for inputs that is close to 0.001.

;; With very large numbers, due to the limited precision of floating
;; point arithmetic, the procedure is likely to enter an infinite
;; recursion, because for some input, improve will just return the
;; guess.

(define (sqrt x)

  (define (sqrt-iter guess x)

    (define improve
      (average guess (/ x guess)))

    (define good-enough?
      (< (abs (- 1 (/ improve guess)))
         0.001))

    (if good-enough?
        guess
        (sqrt-iter improve x)))

  (sqrt-iter 1.0 x))
