
# 名郑码

重新排版，重新命名之后的郑码。

大部分的人都直到五笔，郑码跟五笔类似，也是一种形码输入方案。不同的是，郑码的字根拆分更加的规则有序（可以用来检索输入中日韩三国汉字，五笔只检索输入简体中文）。另外，与五笔的ASDF为横区、HJKL为竖区等等的划分区域方式不同，郑码是按照A-Z的字母排列顺序来分配字根的，这让其输入变得不够直观。

比如，以下为键盘中字母的排列分布：

```
Q- W- E- R-  +T Y+  U- I- O- P-
A- S- D- F-  +G H+  J- K- L- ;;
Z- X- C- V-  +B N+  M- .< .> /?
```

如果A为01，B为02，C为03，如此类推直到Z为26的话，对于郑码而言会有：

01-08为横起笔的字根区；09-12为竖起笔的字根区；13-18为撇起笔的字根区；19-23为捺起笔的字根区；24-26为折起笔的字根区。

如此如果修改郑码的字根键盘分布为如下就会直观很多：

```
18 17 16 15  14 19  20 21 22 23
04 03 02 01  13 09  10 11 12 ;;
08 07 06 05  24 25  26 .< .> /?
```

所以，这就是本工程代码在做的事情。

## how to run and gen
1. run `/home/yanying/mzhengma/zm-to-mzm.rkt` to gen `data.mzm.txt`
2. check `README.md` of each sub directories.


![cheat-sheet](https://raw.githubusercontent.com/yanyingwang/mzhengma/master/cheat-sheet.jpg)