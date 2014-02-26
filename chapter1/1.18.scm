;; Eaercise 1.18

(define (* a b)
  (cond ((= b 0) 0)
        ((even? b) (* (double a) (halve b)))
        (else (+ a (* a (-1+ b))))))

(define (* a b)
  (define (iter a counter sum)
    (cond ((= counter 0) sum)
          ((even? counter) (iter (double a) (halve counter) sum))
          (else (iter a (-1+ counter) (+ sum a)))))
  (iter a b 0))
