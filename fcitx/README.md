
links:
1. https://fcitx-im.org/wiki/How_to_make_your_own_table-based_input_method
2. https://github.com/fcitx/fcitx-table-extra/tree/master/tables

how to gen
```
apt install fcitx-tools

cat mzhengma.data >> mzhengma.txt
cat mzhengma-pinyin.data >> mzhengma-pinyin.txt
cat mzhengma-large.data >> mzhengma-large.txt

 txt2mb mzhengma.txt mzhengma.mb
 txt2mb mzhengma-pinyin.txt mzhengma-pinyin.mb
 txt2mb mzhengma-large.txt mzhengma-large.mb

cp *.conf ~/.config/fcitx/table
cp *.mb ~/.config/fcitx/table




````


