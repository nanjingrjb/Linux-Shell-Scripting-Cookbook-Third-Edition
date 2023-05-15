#########################################################################
# File Name: str_truc.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon May 15 16:32:41 2023
#########################################################################
#!/bin/bash
serv_path=ftp://192.168.3.251:21/diske/SRC_220/01_PRJ/APP_220/src_A_GCN

#从字符串中截取所需要的信息
#截取ftp的ip及端口信息
ftp_ip_port=$(echo "$serv_path"|grep -o -E "^ftp://.*:21")
echo $ftp_ip_port

src_path=${serv_path#"$ftp_ip_port/"}
echo $src_path
