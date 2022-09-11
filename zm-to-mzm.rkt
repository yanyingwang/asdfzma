#!/usr/bin/env racket
#lang racket

(define (get-mapping)
  (for/list ([i (range 97 123)])
    (list (integer->char i) (hash-ref tables (- i 96)))))

(define (to-mzm str)
  (match-define (list code cn) (string-split str))
  (define code/lst
    (string->list code))
  (define ncode/lst
    (for/list ([c code/lst]
               #:do [(define cnum (- (char->integer c) 96))])
      (char-downcase (hash-ref tables cnum))))
  (define ncode (list->string ncode/lst))
  (string-append (string-join (list ncode cn)) "\n")
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

(define zm-port
  (open-input-file "data.zm.txt"))

(with-output-to-file "data.mzm.txt" #:exists 'replace
  (lambda () (printf "\n")))

(with-output-to-file "data.mzm.txt" #:exists 'append
  (lambda ()
    (let loop ([str (read-line zm-port)])
      (unless (eof-object? str)
        (printf (to-mzm str))
        (loop (read-line zm-port))))))y

#;(hash-ref tables 01)

#|
-- -- -- --  ++ ++  -- -- -- --
-- -- -- --  ++ ++  -- -- -- ;;
-- -- -- --  ++ ++  -- .< .> /?

Q- W- E- R-  T- Y-  U- I- O- P-
A- S- D- F-  G- H-  J- K- L- ;;
Z- X- C- V-  B- N-  M- .< .> /?

08 07 06 05  13 14  15 16 17 18
04 03 02 01  19 09  10 11 12 ;;
23 22 21 20  24 25  26 .< .> /?

18 17 16 15  14 19  20 21 22 23
04 03 02 01  13 09  10 11 12 ;;
08 07 06 05  24 25  26 .< .> /?


|#





#;(define table-char
  (list
   '(01 一 (一 (丁 丅)))
   '(02 地 ((土 士) (二 示 走 (耂 者) 工 亞)))
   '(03 现 (() 玉 三 (丰 ) 鬥 耒 耳 (春 ) 馬 (髟 長 长 镸)))
   '(04 的 (扌 寸))
   '(05 世 ((艹 卄) 十 廿 甘 其 ( 栽)))
   '(06 要 (木 酉 甫 (覀 西 襾) 車))
   '(07 在 (石 (大 丆) 不 厂 而 (页 頁) 辰 (龙 尨) (尤 尢 兀) (豕 乑)))
   '(08 成 臣 匸 匚 (七  至 车 弋 牙 (戈 戊 戋)))
   '(09 上 ((虫 蟲) 卜 (虍 虎) 止 (齿 齒)))
   '(10 中 (口 (囗 因) (足 ⻊)))
   '(11 是 ((日 曰) 刂 业 非 (小 ⺌) (水 氺) (田 由 甲 申)))
   '(12 用 ((冂 同) 巾 山 罒 且 (贝 貝) 咼 (见 見) 骨))
   '(13 我 (⺮ ( 矢) (牛 牜 ⺧) 生 攵 (手 ) 毛 千 (气 氣) 禾  舌))
   '(14 他 (亻 川 隹 片 白 自 身 鬼 臼))
   '(15 个 (人 (彳 行) 乂 (食 饣 飠)))
   '(16 所 ((金 钅 釒) (斤 ⺁) (爪 爫) 瓜 舟 釆 豸))
   '(17 月 (几 殳 犭 九))
   '(18 多 ((鱼 ⺈ 魚) 儿  欠 匕 (夕 夂) (勹 包 匃) (鸟 鳥) 氏))
   '(19 说 (言 讠 亠 (文 亡 立 辛 方 永 龍)))
   '(20 度 ((疒 病) 门 冫 丬 (广 廣) 鹿))
   '(21 为 ((忄 ⺗) 丷 半 (羊 ⺶ ⺷) 米 (火 灬)))
   '(22 没 (氵))
   '(23 这 ((之 辶) (宀 定) 冖 穴 礻 衤 戶 心 黽))
   '(24 对 (马 門 (彐 肀 ⺻) 皮 尸 艮 尹 (又  癶)))
   '(25 了 ((阝 卩 廴) 刀 子 (乙 ⺄) 习 也 弓 力 己))
   '(26 发 ((纟 糹 糸)  ))
   )
  )
