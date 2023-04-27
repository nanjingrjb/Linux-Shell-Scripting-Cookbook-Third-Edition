#########################################################################
# File Name: rename.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu Apr 27 13:44:35 2023
#########################################################################
#!/bin/bash
#先进入要更改的目录
cd testfind

#批量修改文件名，将原来mydir*目录改为dir
rename 's/mydir/dir/' mydir*

ls -l
