;; Exercise 2.69

(define (adjoin-set x set)
  (cond ((null? set) (list x))
        ((< (weight x) (weight (car set))) (cons x set))
        (else (cons (car set)
                    (adjoin-set x (cdr set))))))

(define (make-leaf-set pairs)
  (if (null? pairs)
      '()
      (let ((pair (car pairs)))
        (adjoin-set (make-leaf (car pair)
                               (cadr pair))
                    (make-leaf-set (cdr pairs))))))

(define (successive-merge tree)
  (if (null? (cdr tree))
      (car tree)
      (let ((left (car tree))
            (right (cadr tree))
            (rest (cddr tree)))
        (successive-merge
         (adjoin-set (make-code-tree left right)
                     rest)))))

(define (generate-huffman-tree pairs)
  (successive-merge (make-leaf-set pairs)))
