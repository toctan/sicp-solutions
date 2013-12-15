;; Exercise 1.6

(define (sqrt x)
  (define (sqrt-iter guess x)
    (define good-enough?
      (< (abs (- (square guess) x)) 0.001))
    (define improve
      (average guess (/ x guess)))
    (if good-enough?
        guess
        (sqrt-iter improve x)))
  (sqrt-iter 1.0 x))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

;; Due to the applicative-order evaluation, the call of sqrt-iter will
;; end up with an infinite loop.
