#lang racket

; removes a member (atom) from list of atoms
; without cons we lose the other list elements
; when we try to remove after the first element
(define rember 
  (lambda (a lat)
    (cond
      ((null? lat) (quote ())) 
      (else (cond 
              ((eq? (car lat) a) (cdr lat)) 
              (else (rember a 
                            (cdr lat))))))))

; example calls
(rember 'a '(a b c))
(rember 'b '(a b c))

; the correct rember definition
(define rember2 
  (lambda (a lat)
    (cond
      ((null? lat) (quote ())) 
      (else (cond
              ((eq? (car lat) a) (cdr lat)) 
              (else (cons (car lat)
                          (rember2 a
                                  (cdr lat)))))))))

; example calls
(rember2 'a '(a b c))
(rember2 'b '(a b c))
