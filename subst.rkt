#lang racket

; this replaces first occurrence of word `old` 
; with word `new` in the list of atoms
; if the list of atoms is empty, empty list is returned

(define subst
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ())) 
      (else 
       (cond
         ((eq? (car lat) old) (cons new (cdr lat)))
         (else (cons (car lat) (subst new old (cdr lat)))))))))

; examples
(subst 'abc 'def '(abc def def)) ; output: '(abc abc def)
(subst 'abc 'def '())            ; output: '()
