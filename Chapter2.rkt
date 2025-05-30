#lang sicp

; exercise 2.17
(define (last-pair list)
  (if (eq? (cdr list) nil)
      (car list)
      (last-pair (cdr list))))

; exercise 2.18