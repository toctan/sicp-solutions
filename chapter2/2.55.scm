;; Exercise 2.55

(car ''abracadabra)

;; As footnote 34 in the books says, the quote character is just an
;; abbreviation for the special operator quote. So the code above is
;; equivalent to:

(car '(quote abracadabra))

;; which returns quote
