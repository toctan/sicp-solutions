;; Exercise 2.20

(define (same-parity first . rest)
  (define (iter items acc)
    (if (null? items)
        acc
        (iter (cdr items)
              (if (even? (+ (car items) first))
                  (append acc (list (car items)))
                  acc))))
  (cons first
        (iter rest '())))
