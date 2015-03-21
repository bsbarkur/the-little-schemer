#lang racket

; The firsts function constructs list of first s-expressions
; from list of lists

(define firsts
  (lambda (l)
    (cond
      ((null? l) '())
      (else
        (cons (car (car l)) (firsts (cdr l)))))))

; examples
(firsts '((1 2)(3 4)))
(firsts '((1 2)(4)))