#########################################################################
# File Name: pyftpserver.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sun Jun  4 16:05:22 2023
#########################################################################
#!/bin/bash
#首先判断是否已运行，不然会绑定失败
pid=$(ps -af|grep http.server|gawk  '{print $2}')
for i in ${pid[*]};do
	kill -9 $i
done
python -m http.server
