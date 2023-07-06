#########################################################################
# File Name: sed_insert.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Thu Jul  6 07:17:10 2023
#########################################################################
#!/bin/bash
opp=('i' 'a' 'si' 'sa' 'sd' 'qd' 'nd' 'n1n2d' 'n3d' 'nc' 'sc' 'n1n2c' 'y')  

echo "原始数据:"
cat data4.txt
valid=1

for i in ${opp[*]};
do
	case $i in 
		i) echo "第一行前插入:"
			res=$(sed '1i\add a line.\n' data4.txt);;
		a) echo "第一行后插入:"
			res=$(sed '1a\add a line.\n' data4.txt);;
		si) echo "搜索test行前插入:"
			res=$(sed '/test/i\add a line.\n' data4.txt);;
		sa) echo "搜索test行后插入:"
			res=$(sed '/test/a\add a line.\n' data4.txt);;
		sd) echo "搜索second行并删除:"
			res=$(sed '/second/d' data4.txt);;
		qd) echo "搜索second,fourth行并删除:"
			res=$(sed '/second/,/fourth/d' data4.txt);;
		nd) echo "指定第二行删除:"
			res=$(sed '2d' data4.txt);;
		n1n2d) echo "指定数字区间删除:"
			res=$(sed '2,$d' data4.txt);;
		n3d) echo "指定第2-4行删除:"
			res=$(sed '2,4d' data4.txt);;
		nc) echo "修改指定行:"
			res=$(sed '2c\I Change second line.' data4.txt);;
		sc) echo "修改指定字符对应行:"
			res=$(sed '/test/c\I Change line including test.' data4.txt);;
		n1n2c) echo "修改指定行区间:"
			res=$(sed '2,$c\I Change second line.' data4.txt);;
		y) echo "字符映射替换:"
			res=$(sed 'y/test/west/' data4.txt);;
		*)valid=0;;
	esac
	if [ ! $valid ==  0 ]
	then
	  echo $res
	fi
done


