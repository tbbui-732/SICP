#lang sicp

; exercise 2.17 - define a procedure that returns the list that contains
; only the last element of a given non-empty list
(define (last-pair list)
  (if (eq? (cdr list) nil)
      (car list)
      (last-pair (cdr list))))

; exercise 2.18 - define a procedure that takes a list as argument and
; returns a list of the same elements in reverse order
; this implementation is O(N^2) due to the append operation
(define (reverse-naive list)
  (define (reverse-helper list new-list)
    (if (eq? (cdr list) nil) ; NOTE: eq? is weak since it's not supported in every Scheme version
      (append (cons (car list) '()) new-list)
      (reverse-helper (cdr list) (append (cons (car list) '()) new-list))))
  (reverse-helper list '()))

; this implementation is O(N)
(define (reverse list)
  (define (reverse-helper list new-list)
    (if (null? list) ; NOTE: null? is a better way to check empty lists
        new-list
        (reverse-helper (cdr list) (cons (car list) new-list))))
  (reverse-helper list '()))