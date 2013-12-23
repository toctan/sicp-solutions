;; Exercise 2.70

(define sample-tree
  (generate-huffman-tree '((A     2) (NA   16)
                           (BOOM  1) (SHA  3)
                           (GET   2) (YIP  9)
                           (JOB   2) (WAH  1))))

(encode '(Get a job
              Sha na na na na na na na na
              Get a job
              Sha na na na na na na na na
              Wah yip yip yip yip yip yip yip yip yip
              Sha boom
              ) sample-tree)

;; => (1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1
;; 1 0 0 1 1 1 1 0 1 1 1 0 0 0 0 0 0 0 0 0 1 1 0 1 0 1 0 1 0 1 0 1 0 1
;; 0 1 0 1 0 1 0 1 0 1 1 1 0 1 1 0 1 1)
;; length: 84

;; If we used a fixed-length code, 36 * 3 = 108 bits would be needed
;; to encode this song.
