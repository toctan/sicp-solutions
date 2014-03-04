;; Exercise 3.8

(define f
  (let ((state 1))
    (lambda (x)
      (set! state (* state x))
      state)))

(+ (f 0) (f 1))
;; => 0

(+ (f 1) (f 0))
;; => 1

;; So, MIT Scheme evaluates argument from right to left.
