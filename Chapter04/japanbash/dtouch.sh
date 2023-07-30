#!/bin/bash

# 文件名
#   dtouch.sh - 创建新文件以及相应的文件夹
#
# 语法
#   dtouch.sh FILE...
#
# 说明
#   创建指定路径的新文件
#   如果文件路径中的目录不存在，则先创建该目录

readonly SCRIPT_NAME=${0##*/}

dtouch_one()
{
  local path=$1

  if [[ -z $path ]]; then
    printf '%s\n' "${SCRIPT_NAME}: missing file operand" 1>&2
    return 1
  fi

  local dir=
  if [[ $path == */* ]]; then
    dir=${path%/*}
  fi

  if [[ -n $dir && ! -d $dir ]]; then
    mkdir -p -- "$dir" || return 2
  fi

  if [[ ! -e $path ]]; then
    touch -- "$path"
  fi
}

if [[ $# -le 0 ]]; then
  printf '%s\n' "${SCRIPT_NAME}: missing file operand" 1>&2
  exit 1
fi

result=0
for i in "$@"
do
  dtouch_one "$i" || result=$?
done

exit "$result"
