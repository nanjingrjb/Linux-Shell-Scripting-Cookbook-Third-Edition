#!/bin/bash

# ***************************************************************************
# * 
# * @file:ai_ftp.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-05-17 07:05 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



set ftp_server "192.168.193.31:2121"
set ftp_user "root"
set ftp_pass "123456"
set remote_file "destop.ini"
set local_file "./destop.ini"

# 启动lftp会话
spawn lftp -c "open -u $ftp_user,$ftp_pass $ftp_server; get $remote_file $local_file; bye"
#
# # 匹配lftp的密码提示并发送密码
expect "Password:"
send "$ftp_pass\r"
#
# # 等待lftp命令完成并退出
 expect eof
#
