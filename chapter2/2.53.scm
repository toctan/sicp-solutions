;; Exercise 2.53

(list 'a 'b 'c)
                                        ;Value 2: (a b c)

(list (list 'george))
                                        ;Value 3: ((george))

(cdr '((x1 x2) (y1 y2)))
                                        ;Value 4: ((y1 y2))

(cadr '((x1 x2) (y1 y2)))
                                        ;Value 5: (y1 y2)

(pair? (car '(a short list)))
                                        ;Value: #f

(memq 'red '((red shoes) (blue socks)))
                                        ;Value: #f

(memq 'red '(red shoes blue socks))
                                        ;Value 6: (red shoes blue socks)
