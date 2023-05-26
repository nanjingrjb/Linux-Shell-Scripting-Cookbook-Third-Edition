#########################################################################
# File Name: findpar.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri May 26 18:04:52 2023
#########################################################################
#!/bin/bash
lst=$(find ~ -type f -name 'test*')
for i in $lst;do
	r=${i##*'/'}
	echo $r>>myfind.txt
done
