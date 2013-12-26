;; Exercise 2.18

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1)
            (append (cdr list1) list2))))

(define (reverse items)
  (if (null? items)
      '()
      (append (reverse (cdr items))
              (list (car items)))))
