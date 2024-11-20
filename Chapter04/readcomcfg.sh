#!/bin/bash

# ***************************************************************************
# * 
# * @file:pp.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-18 20:39 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



#!/bin/bash
function getspecfg()
{
# 定义配置文件路径
config_file="comcfg.cfg"

# 声明一个关联数组来存储所有配置
declare -A configs

# 当前正在处理的用户名
current_user=""

# 读取配置文件
while IFS= read -r line; do
    # 跳过空行和注释行（假设注释行以 # 开头）
    [[ -z "$line" || "$line" =~ ^#.*$ ]] && continue
    
    # 检查是否是用户名行
    if [[ "$line" =~ ^\[(.*?)\] ]]; then
        current_user="${BASH_REMATCH[1]}"
        # 可以选择在这里做一些初始化操作，比如清除之前的属性等
        # 但由于我们是用前缀来区分不同用户的属性，所以这一步不是必需的
    fi
    
    # 如果当前有正在处理的用户名，则解析属性行
    if [[ -n "$current_user" && "$line" =~ ^([^=]+)=(.*) ]]; then
		key="${BASH_REMATCH[1]}"
        value="${BASH_REMATCH[2]}"
        # 去除值两侧的空格（可选）
        value="${value##*( )}"
        value="${value%%*( )}"
        # 使用 "${current_user}_${key}" 作为关联数组的键
        configs["${current_user}_${key}"]="$value"
	fi
done < "$config_file"

#echo "all_cfg"="${!configs[*]}"
# 输出解析后的配置（以用户名分组显示）

	attr="$1_$2"
    echo ${configs[$attr]}
}

