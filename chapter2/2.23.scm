;; Exercise 2.23

(define (for-each proc list)
  (if (null? list)
      '()
      (begin (proc (car list))
             (for-each proc (cdr list)))))
