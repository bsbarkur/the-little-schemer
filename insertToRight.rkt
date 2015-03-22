#lang racket

; Inserts `new` after the element `elem` in the list of atoms
; Similar to inserting an element in the middle of the linked list
; except that we don't have to fiddle with pointers here explicitly line in C

(define insertToRight 
  (lambda (new elem list)
    (cond
      ((null? list) (quote ())) 
      (else 
       (cond
         ((eq? (car list) elem) (cons elem (cons new (cdr list)))) 
         (else (cons (car list) (insertToRight new elem (cdr list)))))))))

; examples
(insertToRight '3 '2 '(1 2 4 5)) ; output: '(1 2 3 4 5)
(insertToRight 'nice 'a '(this is a program)) ; output: '(this is a nice program)
