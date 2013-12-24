;; Exercise 2.54

(define (equal? l1 l2)
  (cond ((and (symbol? l1) (symbol? l2))
         (eq? l1 l2))
        ((and (list? l1) (list? l2))
         (or (and (null? l1) (null? l2))
             (and (eq? (car l1) (car l2))
                  (equal? (cdr l1) (cdr l2)))))
        (else false)))
