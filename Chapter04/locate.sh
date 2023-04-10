locate zip |grep zip[[:digit:]]$ >locateres.txt 
#locate也支持正则表达式
#
#需要使用-r，如下

locate -r zip[0-9]$


