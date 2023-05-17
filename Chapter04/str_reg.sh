#########################################################################
# File Name: str_truc.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Mon May 15 16:32:41 2023
#########################################################################
#!/bin/bash
serv_path=ftp://152.168.3.251:21/diske/SRC_220/01_PRJ/APP_220/src_A_GCN


#采用字符串截取操作
#%右截取配合/*保留左边，#左截取配合*/保留右##边

#%右截取实际是从右向左寻找，%表示第一个匹配，%%表示最左边匹配
type=${serv_path%%:*}
echo type=$type
#采用basename得到最终的目的文件夹或文件
desfile=$(basename $serv_path)
echo desfile=$desfile

#得到服务器上完整路径,采用左截取，右保留
wholedir=${serv_path#*21}
echo whole_dir=$wholedir

#得到服务器完整信息
info=${serv_path#*//}
echo info=$info

#获取端口及IP信息
ip=${info%:*}
echo ip=$ip

#获取端口信息
port=${info#*:}
echo ip=$port
#从字符串中截取所需要的信息
#截取ftp的ip及端口信息
ftp_ip_port=$(echo "$serv_path"|grep -o -E "^ftp://[0-2]?[0-9]{1,2}.[0-2]?[0-9]{1,2}.[0-2]?[0-9]{1,2}.[0-2]?[0-9]{1,2}:21")
echo ip=$ftp_ip_port



src_path=${serv_path#"$ftp_ip_port/"}
echo src=$src_path

#字符串操作测试
#得到符合要求的子字符串的索引
sub=21
index=$(expr index "$serv_path" "$sub")
echo index=$index

#提取子字符串的格式为${str:start:len}
substr=${serv_path:$index}
echo $substr
substring=':21'
index=$(expr match "$serv_path" ':21')
echo subindex=$index
