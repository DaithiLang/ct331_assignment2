#lang racket

(define (ins_beg el lst)
  (append (list el) lst))

(define (ins_end el lst)
  (append lst (list el)))

(define (cout_top_level lst)
  (if (null? lst)
      0
      (+ 1 (cout_top_level (cdr lst)))))

(define (count_instances item lst)
  (cond [(null? lst) 0]
        [(equal? item (car lst)) (+ 1 (count_instances item (cdr lst)))]
        [else (count_instances item (cdr lst))]))

(define (count_instances_tr_helper item lst)
  (count_instances_tr item lst 0))
 

(define (count_instances_tr item lst count)
  (cond [(empty? lst) count]
        [(equal? item (car lst)) (count_instances_tr item (cdr lst) (+ 1 count))]
        [else (count_instances_tr item (cdr lst) count)]))

(define (count_instances_deep item lst)
  (cond [(empty? lst) 0]
        [(list? (car lst))
         (+ (count_instances_deep item (car lst)) (count_instances_deep item (cdr lst)))]
        [(equal? item (car lst)) (+ 1 (count_instances_deep item (cdr lst)))]
        [else (count_instances_deep item (cdr lst))]))



