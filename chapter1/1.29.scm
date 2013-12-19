;; Exercise 1.29

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral f a b n)
  (define h (/ n (- b a)))
  (define (yk k)
    (f (+ a (* k h))))
  (define (term i)
    (* (cond ((= i 0) 1)
             ((= i n) 1)
             ((even? i) 2)
             (else 4))
       (yk i)))
  (* (/ h 3)
     (sum term 0 1+ n)))
