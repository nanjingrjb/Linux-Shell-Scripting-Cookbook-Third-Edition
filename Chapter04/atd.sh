#!/bin/bash

#利用service atd status查询atd服务状态
#在ubuntu中并没有systemctl命令，而是service服务命令

sudo apt install at  
service --status-all
service atd status


