#!/bin/bash

# ***************************************************************************
# * 
# * @file:phone_ssh.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-30 13:30 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



spawn ssh -p 8022 root@192.168.3.16
expect 'password*'
send '123456\n'
interact

