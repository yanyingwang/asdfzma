#!/usr/bin/env racket
#lang racket

(define (to-mzm str)
  (match-define (list code cn) (string-split str))
  (define code/lst
    (string->list code))
  (define ncode/lst
    (for/list ([c code/lst]
               #:do [(define cnum (- (char->integer c) 96))])
      (hash-ref tables cnum)))
  (define ncode (list->string ncode/lst))
  (string-append (string-join (list ncode cn)) "\n")
  )

(define tables
  (hash 8 #\q
        7 #\w
        6 #\e
        5 #\r
        13 #\t
        14 #\y
        15 #\u
        16 #\i
        17 #\o
        18 #\p
        4 #\a
        3 #\s
        2 #\d
        1 #\f
        19 #\g
        9 #\h
        10 #\j
        11 #\k
        12 #\l
        23 #\z
        22 #\x
        21 #\c
        20 #\v
        24 #\b
        25 #\n
        26 #\m
        ))

(define zm-port
  (open-input-file "data-zm.txt"))

(with-output-to-file "data-mzm.txt" #:exists 'replace
  (lambda () (printf "\n")))

(with-output-to-file "data-mzm.txt" #:exists 'append
  (lambda ()
    (let loop ([str (read-line zm-port)])
      (unless (eof-object? str)
        (printf (to-mzm str))
        (loop (read-line zm-port))))))







#|
-- -- -- --  ++ ++  -- -- -- --
-- -- -- --  ++ ++  -- -- -- ;;
-- -- -- --  ++ ++  -- .< .> /?

Q- W- E- R-  +T Y+  U- I- O- P-
A- S- D- F-  +G H+  J- K- L- ;;
Z- X- C- V-  +B N+  M- .< .> /?

08 07 06 05  13 14  15 16 17 18
04 03 02 01  19 09  10 11 12 ;;
23 22 21 20  24 25  26 .< .> /?
|#
