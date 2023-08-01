#########################################################################
# File Name: dict_reg.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Tue Aug  1 08:12:33 2023
#########################################################################
#!/bin/bash
grep -E "(^sea|^tea).*[^('s)|(ful)|(zle)|(oom)]$" /usr/share/dict/words |grep -E "(ing|ser)$"|wc -l
