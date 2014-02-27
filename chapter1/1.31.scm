;; Exercise 1.31

;; recursive

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

;; iterative

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))


(define (pi n)
  (* (product (lambda (x)
                (/ (* (-1+ x) (1+ x))
                   (square x)))
              3
              (lambda (x) (+ 2 x))
              n)
     4))
