;; Exercise 3.2

(define (make-monitored f)
  (let ((count 0))
    (lambda (x)
      (if (eq? x 'how-many-calls?) count
          (begin (set! count (1+ count)) (f x))))))
