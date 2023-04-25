#########################################################################
# File Name: xargs.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Tue Apr 25 23:34:51 2023
#########################################################################
#!/bin/bash
echo "独立显示一个条目"
 ls -l |xargs -I {} echo {}|wc -l
echo "整体显示"
 ls -l |xargs  echo {}|wc -l
