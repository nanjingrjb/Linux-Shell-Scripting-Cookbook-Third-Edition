#!/bin/bash

# ***************************************************************************
# * 
# * @file:ftp_cpuFile.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-12-05 11:16 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


#从指定的cpu中进行数据备份

#具体使用办法为：ftp_cpuFile [master/slave]

user=root
passwd=root

#设置存放的地址
back_path="/mnt/e/tmp/back/"

home_path="/mnt/e/SAL_WORK/3-CFG_ALL/"
soft_path="02_HSCfg/SAL_35A_N_南网/sys.inf"
logic_path="01_Logic/SAL_35A_NW逻辑图/35A_N_南网OUT/logic.inf"
app_path="/mnt/e/SAL_SRC/01_PRJ/APP_SAL35_NW/Release/strip_NW_AG/nsapp.out"
plat_path="/mnt/e/zzkk-nwbh-110/CPU/apps/"
app_file=($(basename $soft_path) $(basename $logic_path) $(basename $app_path))

plat_file=(autoexec.ini nssys.out  GSTP_FPGA.bin)
echo "${app_file[0]}"
if [ "$1" = 'master' ]
then
	ip=10.10.10.5
else
	ip=10.10.10.4
fi

find $back_path -type f -print|xargs -I {}  rm {}
ftp -n $ip <<LOGIN
quote user $user
quote PASS $passwd
cd /apps/inf
dir
binary
prompt off

get ${app_file[0]} "$back_path${app_file[0]}"
get ${app_file[1]} "$back_path${app_file[1]}"
cd /apps
get ${app_file[2]} "$back_path${app_file[2]}"
get  ${plat_file[0]} "$back_path"${plat_file[0]}
get  ${plat_file[1]} "$back_path"${plat_file[1]}
get  ${plat_file[2]} "$back_path"${plat_file[2]}

LOGIN

