;; Exercise 1.16

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (-1+ n))))))

(define (fast-expt b n)
  (define (iter b counter product)
    (cond ((= counter 0) product)
          ((even? counter) (iter (square b) (/ counter 2) product))
          (else (iter b (-1+ counter) (* product b)))))
  (iter b n 1))
