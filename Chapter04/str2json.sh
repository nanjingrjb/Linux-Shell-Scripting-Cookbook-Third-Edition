#########################################################################
# File Name: str2json.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sun Jun  4 16:46:55 2023
#########################################################################
#!/bin/bash
echo '{"jobs":"developer","name":"rjb","sex":"male"}'|python -m json.tool
echo '{"address":{"provice":"jiangsu","city":"nanjing"},"name":"rjb","sex":"male"}'|python -m json.tool
