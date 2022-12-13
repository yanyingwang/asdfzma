#!/usr/bin/env racket
#lang racket

(define (transform-code code0)
  (define ncode0/lst
    (for/list ([c (string->list code0)]
               #:do [(define cnum (- (char->integer c) 96))])
      (char-downcase (hash-ref tables cnum))))
  (list->string ncode0/lst)
  )

(define (to-mzm str)
  (define nstr/lst
    (let loop ([n 0]
               [str/lst (string-split str)])
      (if (empty? str/lst)
          '()
          (cons (if (or (= n 0) (= n 3))
                    (transform-code (car str/lst))
                    (car str/lst))
                (loop (add1 n) (cdr str/lst)))
          )
      ))
  (string-append (string-join nstr/lst "\t") "\n")
  )

(define tables
  (hash
   13 #\G 14 #\T 18 #\Q 17 #\W 16 #\E 15 #\R
   04 #\A 03 #\S 02 #\D 01 #\F  08 #\Z 07 #\X 06 #\C 05 #\V
   19 #\Y 20 #\U 21 #\I 22 #\O 23 #\P
   09 #\H 10 #\J 11 #\K 12 #\L
   24 #\B 25 #\N 26 #\M
   )
  )

(define (write-data-to-file)
  (define zm-port
    (open-input-file "zm.data.txt"))
  (with-output-to-file "mzm.data.txt" #:exists 'replace
    (lambda () (printf "\n")))
  (with-output-to-file "mzm.data.txt" #:exists 'append
    (lambda ()
      (let loop ([str (read-line zm-port)])
        (unless (eof-object? str)
          (printf (to-mzm str))
          (loop (read-line zm-port))))))
  )

(write-data-to-file)