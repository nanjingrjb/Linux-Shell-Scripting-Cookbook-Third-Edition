#########################################################################
# File Name: regbashver.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon Jun  5 07:52:53 2023
#########################################################################
#!/bin/bash
if [[ ! $BASH_VERSION == 5.1.* ]];then echo ok;else echo lower;fi
