;; Exercise 1.15

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))



(sine 12.15)
(p (sine 4.05))
(p (p (sine 1.3499999999999999)))
(p (p (p (sine .44999999999999996))))
(p (p (p (p (sine .15)))))
(p (p (p (p (p (sine .05))))))

;; p is applied 5 times
;; The order of growth in space and time are both O(log a)
