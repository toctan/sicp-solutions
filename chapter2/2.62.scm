;; Exercise 2.62

(define (union-set s1 s2)
  (cond ((null? s1) s2)
        ((null? s2) s1)
        ((= (car s1) (car s2))
         (cons (car s1) (union-set (cdr s1) (cdr s2))))
        ((< (car s1) (car s2))
         (cons (car s1) (union-set (cdr s1) s2)))
        (else (cons a2 (union-set a1 (cdr s2))))))
