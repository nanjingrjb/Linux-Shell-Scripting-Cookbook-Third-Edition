#########################################################################
# File Name: readinfo.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Wed May 10 09:28:39 2023
#########################################################################
#!/bin/bash
for i,j in $(cat info.txt);do echo " $i,$j";done
