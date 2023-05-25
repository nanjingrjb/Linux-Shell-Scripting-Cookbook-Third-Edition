#########################################################################
# File Name: lstr_cut_sort_key.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu May 25 18:12:01 2023
#########################################################################
#!/bin/bash

if [ -f lsres.txt ];then
	rm lsres.txt
fi
#pwd	
ls -l --time-style=long-iso ~|tr -s " "|cut -d " " -f 6|sort -k 1.1nbr -k 1.6nbr -k 1.9nbr
#ls -l --time-style=long-iso  ~  >lsres.txt
#cat lsres.txt

#echo "start sort now."
#cat lsres.txt|tr -s " "|cut -d " " -f 6|sort -k 1.1nbr -k 1.6nbr -k 1.9nbr
