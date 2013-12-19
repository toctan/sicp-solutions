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
  (define (term x)
    (/ (* (-1+ x) (1+ x))
       (square x)))
  (define (inc2 x) (+ x 2))
  (* 4 (product term 3 inc2 n)))
