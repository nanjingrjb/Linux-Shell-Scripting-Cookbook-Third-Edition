#########################################################################
# File Name: ftp.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon May 15 15:27:43 2023
#########################################################################
#!/bin/bash


#采用wget命令可以登录ftp服务器，下载对应的文件

des_path=/sdcard/ftp_from_ieslab/src_gcn 
serv_path=ftp://192.168.3.251:21/diske/SRC_220/01_PRJ/APP_220/src_A_GCN/*
wget -r -nH -P $des_path $serv_path	--ftp-user=scusky  --ftp-password=scusky111111 
