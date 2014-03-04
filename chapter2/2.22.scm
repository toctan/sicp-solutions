;; Exercise 2.22

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons (square (car things))
                    answer))))
  (iter items nil))

;; The square of the car is calculated first and consed in front of
;; the existing answer, so the result comes out first.




(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer
                    (square (car things))))))
  (iter items nil))

;; The result is (((() . 1) . 4) . 9)
;; The order is right, but cons builds a conventional list only when
;; the second argument is a list
