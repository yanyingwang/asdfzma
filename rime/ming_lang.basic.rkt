#lang racket/base


(require ming/mapping/racket) ;; need to install ming package first

(define keychars
  (remove-duplicates (flatten (map (lambda (e) (string-split (symbol->string (cadr e)) "")) (mapping)))))

(define opfile "ming_lang.basic.dict.yaml")

(with-output-to-file opfile #:exists 'replace
  (lambda () (printf "
---
name: ming_lang.basic
version: \"2.0\"
sort: original
columns:
  - text
  - code
encoder:
  rules:
    - length_equal: 2
      formula: \"AaAbBaBb\"
    - length_equal: 3
      formula: \"AaBaBbCaCb\"
    - length_equal: 4
      formula: \"AaBaCaDaDb\"
    - length_in_range: [5, 10]
      formula: \"AaBaCaDaEa\"
...
\n\n")))

(define (find-to-file chstr searching-file)
  (with-output-to-file opfile #:exists 'append
  (lambda ()
    (let loop ([linestr (read-line searching-file)])
      (unless (eof-object? linestr)
        (if (and (> (string-length linestr) 3)
                 (string-prefix? linestr (string-join (list chstr "\t") "")))
            (printf "~a\n" linestr)
            (loop (read-line searching-file)))
        )))))


(for ([s keychars]
      #:do [(define f (open-input-file "mzhengma-large/mzhengma-large.dict.yaml"))])
  (find-to-file s f)
  )