#lang racket
(cons 1 2)

(cons 1 (cons 2 (cons 3 null)))

(cons "bob" (cons 1 (cons '(1 2 3) null)))

(list 'bob' '1 '(1 2 3))

(append '(bob) '(1) '((1 2 3)))