
# 名郑码
重新排版，重新命名之后的郑码。


## why this project
If you are looking for an English version of this passage, please go to <https://www.yanying.wang/2022/09/mzhengma.html>.

大部分的人都知道五笔，郑码跟五笔类似，也是一种形码输入方案。不同的是，郑码的字根拆分更加的规则有序（可以用来检索输入中日韩三国简繁汉字，五笔只检索输入简体中文）。另外，与五笔的ASDFG为横区、HJKL为竖区等等的划分区域方式不同，郑码是按照A-Z的字母排列顺序来分配字根的，也是因此，郑码在具体的使用上不如五笔直观。

比如，以下为键盘中字母的排列分布：

```
Q- W- E- R-  +T Y+  U- I- O- P-
A- S- D- F-  +G H+  J- K- L- ;;
Z- X- C- V-  +B N+  M- .< .> /?
```

如果A为01，B为02，C为03，依次类推直到Z为26的话，那么对于郑码而言会有：


01-08为横起笔的字根区；09-12为竖起笔的字根区；13-18为撇起笔的字根区；19-23为捺起笔的字根区；24-26为折起笔的字根区。

然而如果我们修改郑码的字根键盘分布为类似于五笔的划分方式，那么此输入法就不仅组词逻辑严整，而且物理效果人性：

```
18 17 16 15  14 19  20 21 22 23
04 03 02 01  13 09  10 11 12 ;:
08 07 06 05  24 25  26 .< .> /?
```

总的来说，原郑码的字母被重新做了映射，如下：
```
'((#\A #\F)
  (#\B #\D)
  (#\C #\S)
  (#\D #\A)
  (#\E #\V)
  (#\F #\C)
  (#\G #\X)
  (#\H #\Z)
  (#\I #\H)
  (#\J #\J)
  (#\K #\K)
  (#\L #\L)
  (#\M #\G)
  (#\N #\T)
  (#\O #\R)
  (#\P #\E)
  (#\Q #\W)
  (#\R #\Q)
  (#\S #\Y)
  (#\T #\U)
  (#\U #\I)
  (#\V #\O)
  (#\W #\P)
  (#\X #\B)
  (#\Y #\N)
  (#\Z #\M))
```
例如，“字”原本的编码为“WDYA”，被重新映射后为“PANF”。


## how to run and gen dict data
* Run `zm-to-mzm.rkt` to gen `data.mzm.txt`
* Check `README.md` of each sub directories for next.

## inputing
![input-cqm](https://raw.githubusercontent.com/yanyingwang/mzhengma/master/pics/input-cqm.png)

## cheat sheet
![cheat-sheet](https://raw.githubusercontent.com/yanyingwang/mzhengma/master/pics/cheat-sheet.jpg)

