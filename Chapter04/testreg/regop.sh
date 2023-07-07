#########################################################################
# File Name: regop.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Fri Jul  7 17:57:49 2023
#########################################################################
#!/bin/bash
tstoken=('()' '{}' '[]' '.' '*'
'?' '+' '^' '$' '\' '|' 
)

#特殊字符的测试
testspetoken()
{
	echo -e  "this is a \$5.00.\nAnother is price 5.8.\n"|sed -n '/\$/p'
}

testspetoken
