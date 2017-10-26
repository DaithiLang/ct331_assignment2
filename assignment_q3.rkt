#lang racket

(define (traverse tree)
  (begin (cond [(not (empty? (car tree))) (traverse (car tree))])
         (printf "~a " (cadr tree))
         (cond [(not (empty? (caddr tree))) (traverse (caddr tree))])))


(define (element_found item tree)
  (cond [(empty? tree) #f]
        [(equal? item (cadr tree)) #t]
        [(< item (cadr tree)) (element_found item (car tree))]
        [else (element_found item (caddr tree))]))

(define (insert_helper item tree)
  (insert item tree <))

(define (insert item tree left_of)
  (cond [(empty? tree) (list '() item '())]
        [(equal? item (cadr tree)) tree]
      
        [(left_of item (cadr tree))
         (list (insert item (car tree) left_of) (cadr tree) (caddr tree))]
        [else
         (list (car tree) (cadr tree) (insert item (caddr tree) left_of))]))