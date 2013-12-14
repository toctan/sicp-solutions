;; Exercise 1.5

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;; With an applicative-order interpreter, the arguments will get evaluated
;; first, `p` will get called, which defines itself recursively, the
;; interpreter will probably catch it as a stack overflow.

;; With an normal-order interpreter, `p` will never get called and the function
;; will return 0.
