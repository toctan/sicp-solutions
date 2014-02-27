;; Exercise 1.33

(define (filtered-accumulate combiner null-value filter term a next b)
  (if (> a b)
      null-value
      (if (filter a)
          (combiner (term a)
                    (filtered-accumulate combiner null-value term (next a) next b))
          (filtered-accumulate combiner null-value term (next a) next b))))

(define (square-sum-prime a b)
  (filtered-accumulate + 0 prime? square a 1+ b))

(define (relative-prime? x y)
  (= 1 (gcd x y)))

(define (product-relative-prime n)
  (filtered-accumulate * 1 relative-prime? (lambda (x) x) 1 1+ n))
