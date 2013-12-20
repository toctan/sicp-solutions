;; Exercise 2.2

;; segment

(define (make-segment start end)
  (cons start end))

(define (start-segment seg)
  (car seg))

(define (end-segment seg)
  (cdr seg))

(define (print-segment seg)
  (let ((s (start-segment seg))
        (e (end-segment seg)))
    (print-point s)
    (print-point e)))

;; point
(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ", ")
  (display (y-point p))
  (display ")"))

(define (midpoint-segment seg)
  (let ((s (start-segment seg))
        (e (end-segment seg)))
    (make-point (average (x-point s) (x-point e))
                (average (y-point s) (y-point e)))))
