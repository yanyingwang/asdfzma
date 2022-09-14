
# 名郑码
重新排版，重新命名之后的郑码。


# why this project
After I realize that Chinese is more suitable than English to be the interface for humans to use programming languages, I start to conceive the [Ming programming language](https://github.com/yanyingwang/ming).

If I am right about this, then people who don't know a single Chinese character should also be possible to use the Chinese language interface to operate the Ming programming language.

Then there comes a question: if they want to use the Ming programing language, should they learn Chinese first?

Yes, they should. But not in a common way. I conceive they don't need to learn how to listen and speak Chinese, they should just focus on Reading and Writing.


Why is that? Because the Speaking of Chinese has nearly nothing to do with Writing, those two parts can be looked at as two individual systems of Chinese, and not to mention that Writing far outweigh Listening in Chinese.

If you by any chance have seen Japanese characters, the fact is to some degree, the Japanese people were ignoring the speaking of Chinese characters along with borrowing Chinese characters and connotations. And besides, what you might not know is a long time ago, Korean were speaking their own language, while at the same time, some of them had gained the ability to write letters using Chinese characters to communicate with Chinese people with knowing nothing about the pronunciations of these characters.

Nowadays, fortunately, there already are some input methods for people to ignore the pronunciation of Chinese characters and just directly use the English letters as the standings for partitions of Chinese characters to constitute the Chinese character they wanted and input it.

[Zhengma(郑码) method](https://en.wikipedia.org/wiki/Zhengma_method) is one kind of those method. For those people who have heard of [Wibi](https://en.wikipedia.org/wiki/Wubi_method) but not Zhengma, it's good for you to know that they are very similar things except Zhengma is more powerful to work with a larger set of Chinese characters.

But for practical usage, Zhengma has a vital disadvantage comparing to Wubi, which is the partitions of characters are sorted by alphabet, not by their positions in keyboard, this has made it unintuitive to use. So I change the orders as a new searching DB for the Zhengma input method.

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
04 03 02 01  13 09  10 11 12 ;;
08 07 06 05  24 25  26 .< .> /?
```

## how to run and gen dict data
1. run `/home/yanying/mzhengma/zm-to-mzm.rkt` to gen `data.mzm.txt`
2. then check `README.md` of each sub directories for next.

## inputing
![input-cqm](https://raw.githubusercontent.com/yanyingwang/mzhengma/master/input-cqm.jpg)

## cheat sheet
![cheat-sheet](https://raw.githubusercontent.com/yanyingwang/mzhengma/master/cheat-sheet.jpg)

