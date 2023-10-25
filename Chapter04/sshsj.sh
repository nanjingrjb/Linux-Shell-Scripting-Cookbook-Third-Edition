#########################################################################
# File Name: sshsj.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon Jul 31 13:13:02 2023
#########################################################################
#!/bin/bash
ip_jcrj=192.168.3.251
ip_home=192.168.1.1

ping  -c 2 -i 0.2 -W 1 "$ip_jcrj" &> /dev/null
if [ $? -eq 0 ]
then
	sshpass -p "123456" ssh -p 8022 root@192.168.3.206  
	#密码为123456
else
        ping  -c 2 -i 0.2 -W 1 "$ip_home" &> /dev/null
	if [ $? -eq 0 ]
	then 
	sshpass -p "123456" ssh -p 8022 root@192.168.1.6
        fi
fi

