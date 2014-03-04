;; Exercise 2.1

(define (make-rat n d)
  (if (> (* n d))
      (cons (abs n) (abs d))
      (cons (- (abs n) (abs d)))))
