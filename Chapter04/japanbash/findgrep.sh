#!/bin/bash

# 文件名
#   findgrep.sh - 按照指定模式对目录下的文件进行匹配，并输出匹配到的行
#
# 语法
#   findgrep.sh PATTERN [DIRECTORY]
#
# 说明
#   递归查找指定目录下的文件，并输出文件中与指定模式相匹配的行
#   匹配模式按照基本正则表达式处理
#   如果没有指定要查找的目录，则把当前目录当作查找目录

readonly SCRIPT_NAME=${0##*/}

pattern=$1
directory=$2

if [[ -z $pattern ]]; then
  printf '%s\n' "${SCRIPT_NAME}: missing search pattern" 1>&2
  exit 1
fi

if [[ -z $directory ]]; then
  directory=.
fi

if [[ ! -d $directory ]]; then
  printf '%s\n' "${SCRIPT_NAME}: '$directory': No such directory" 1>&2
  exit 2
fi

find -- "$directory" -type f -print0 | xargs -0 grep -e "$pattern" -- /dev/null
