;; Exercise 2.3

(define (make-rectangle upper-left-corner lower-right-corner)
  (cons upper-left-corner lower-right-corner))

(define (width rect)
  (- (x-point lower-right-corner)
     (x-point upper-left-corner)))

(define (height rect)
  (- (y-point upper-left-corner)
     (y-point lower-right-corner)))

(define (perimeter rect)
  (* 2 (+ (width rect)
          (height rect))))

(define (area rect)
  (* (width rect)
     (height rect)))


;; Another implementation

(define (make-rectangle upper-left-corner width height)
  (cons upper-left-corner
        (cons width height)))

(define (width rect)
  (car (cdr rect)))

(define (height rect)
  (cdr (cdr rect)))
