
links:
1. https://fcitx-im.org/wiki/How_to_make_your_own_table-based_input_method
2. https://github.com/fcitx/fcitx-table-extra/tree/master/tables

how to gen
1. place `**.conf` file to `~/.config/fcitx/table`
2. run `cat mzhengma.header.txt > mzhengma.txt`
3. run `cat ../data.mzm.txt >> mzhengma.txt`
4. run `apt install fcitx-tools`
5. run `txt2mb mzhengma.txt mzhengma.mb`

