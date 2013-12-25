;; Exercise 2.60

(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))

(define (intersection-set s1 s2)
  (cond ((or (null? s1) (null? s2)) '())
        ((element-of-set? (car s1) s2)
         (cons (car s1) (intersection-set (cdr s1) s2)))
        (else (intersection-set (cdr s1) s2))))

(define (adjoin-set x set)
  (cons x set))

(define (union-set s1 s2)
  (append s1 s2))

;; element-of-set? and intersection-set will be a little
;; slower. adjoin-set is O(1) (as opposed to O(n)) and union-set is
;; O(n) (as opposed to O(n^2)). This representation is suitable for
;; occasions when most of the operations are unions and adjoins
