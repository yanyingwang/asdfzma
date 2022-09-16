
links:
1. https://fcitx-im.org/wiki/How_to_make_your_own_table-based_input_method
2. https://github.com/fcitx/fcitx-table-extra/tree/master/tables

how to gen
```
apt install fcitx-tools

cat data.mzm.txt >> mzhengma.txt
cat data.mzml.txt >> mzhengmal.txt

txt2mb mzhengma.txt mzhengma.mb
txt2mb mzhengmal.txt mzhengmal.mb

cp *.conf ~/.config/fcitx/table
cp *.mb ~/.config/fcitx/table
````


