#!/bin/bash

# ***************************************************************************
# * 
# * @file:gawk_search.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-29 14:44 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



echo -e "11sj\n22jk\n58kl\ndff\n56as\n99jkf\n">mydigit.txt
echo -e "11sj\n22jk\n58kl\ndff\n56as\n99jkf\n"|
	gawk '/^(11|22|33|44|55|66|77|88|99)[a-z]+$/{print "match is :"$0}'

res=$(echo -e "11sj\n22jk\n58kl\ndff\n56as\n99jkf\n"|grep -E '^(11|22|33|44|55|66|77|88|99)[a-z]+$')
for i in ${res[@]}
do 
	echo "match elm is $i"
done
