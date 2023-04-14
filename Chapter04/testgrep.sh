#########################################################################
# File Name: testgrep.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri Apr 14 10:48:02 2023
#########################################################################
#!/bin/bash


#优先采用扩展正则表达式进行文件内容搜索
echo "搜索含有ls、sa开头的命令:grep  -n -E '^(ls|sa).+' ./testgrep/*.txt"
grep --color=auto  -n -E '^(ls|sa).+' ./testgrep/*.txt

echo "排除启动含有-_的命令,搜索含有ls、sa开头的命令:grep  -n -E '^(ls|sa).+' ./testgrep/*.txt"
grep --color=auto  -n -E '^(ls|sa).[^/-/_].?' ./testgrep/*.txt

echo "含有linux或lsb字符，中间含有连接符号_-的命令:grep  -n -E '[-_]+' ./testgrep/*.txt"
grep --color=auto  -n -iE '(linux|lsb)[-_]+' ./testgrep/*.txt

echo "含有linux或lsb字符，中间不含有连接符号_-的命令:grep  -n -E '[-_]+' ./testgrep/*.txt"
grep --color=auto  -n -iE '(linux|lsb)[^-_]+' ./testgrep/*.txt
