#########################################################################
# File Name: dict_reg.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Tue Aug  1 08:12:33 2023
#########################################################################
#!/bin/bash
#以sea或tea结尾，中间不含有ass或go，以ful或ing结尾的单词
grep -E "^(sea|tea)[^(ass|go)].*(ful|ing)$" /usr/share/dict/words 
