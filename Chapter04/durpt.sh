#########################################################################
# File Name: durpt.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Tue Aug  8 08:05:55 2023
#########################################################################
#!/bin/bash
du ./ -S|sort -rn |sed '{11,$D;=}'|sed 'N;s/\n/ /'|gawk '{printf $1":\t" $2"\t" $3 "\n"}'
