#lang sicp

; exercise 2.17 - define a procedure that returns the list that contains
; only the last element of a given non-empty list
(define (last-pair list)
  (if (eq? (cdr list) nil)
      (car list)
      (last-pair (cdr list))))

; exercise 2.18 - define a procedure that takes a list as argument and
; returns a list of the same elements in reverse order
(define (reverse list)
  (define (reverse-helper list new-list)
    (if (eq? (cdr list) nil)
      (append (cons (car list) '()) new-list)
      (reverse-helper (cdr list) (append (cons (car list) '()) new-list))))
  (reverse-helper list '()))