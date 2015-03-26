#lang racket

; This code removes all occurances of a word from list of atoms

(define multiremove
  (lambda (word listAtoms)
    (cond
      ((null? listAtoms) '())
      ((eq? (car listAtoms) word)
       (multiremove word (cdr listAtoms)))
      (else
        (cons (car listAtoms) (multiremove word (cdr listAtoms)))))))

; examples

(multiremove 'from '(from at from at from at)) ; output '(at at at)
(multiremove '1 '(1 1 2 3 4 5 1))              ; output '(2 3 4 5)
