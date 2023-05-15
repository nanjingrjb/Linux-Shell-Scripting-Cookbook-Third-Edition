#########################################################################
# File Name: ftp.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon May 15 15:27:43 2023
#########################################################################
#!/bin/bash


#采用wget命令可以登录ftp服务器，下载对应的文件

des_path=/sdcard/ftp_from_ieslab/src_gcn 
serv_path=ftp://192.168.3.251:21/diske/SRC_220/01_PRJ/APP_220/src_A_GCN
wget -r -nH -P $des_path $serv_path	--ftp-user=scusky  --ftp-password=scusky111111 

#将下载后的文件夹删除掉，只保留最终的src_A_GCN文件夹
ip=$(echo $serv_path|grep -o -E "^ftp://.*:21")

dir=${serv_path#"$ip/"}

final_dir="$des_path/$dir"
echo $ip 
echo $final_dir.
des=${des_path%src_gcn}
echo $des
if [ -e $des ];
then rm -fr "$des/*"
fi

if [ -e $final_dir ];
then mv $final_dir $des
else
	echo "file no exist."
fi
#删除原来的文件
rm -fr $des_path
