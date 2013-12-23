;; Exercise 2.68

(define (encode-symbol symbol tree)
  (if (member symbol (symbols tree))
      (let ((left (left-branch tree))
            (right (right-branch tree)))
        (if (member symbol (symbols left))
            (if (leaf? left)
                '(0)
                (cons '0 (encode-symbol symbol left)))
            (if (leaf? right)
                '(1)
                (cons '1 (encode-symbol symbol right)))))
      (error "bad symbol: ENCODE-SYMBOL" symbol)))

(define (encode message tree)
  (if (null? message)
      '()
      (append (encode-symbol (car message) tree)
              (encode (cdr message) tree))))

(define sample-tree
  (make-code-tree (make-leaf 'A 4)
                  (make-code-tree
                   (make-leaf 'B 2)
                   (make-code-tree (make-leaf 'D 1)
                                   (make-leaf 'C 1)))))

(encode '(a d a b b c a) sample-tree)
;; => (0 1 1 0 0 1 0 1 0 1 1 1 0)
