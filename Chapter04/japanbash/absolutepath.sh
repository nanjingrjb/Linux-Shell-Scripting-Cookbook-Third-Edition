#!/bin/bash

# 文件名
#   absolutepath.sh - 将相对路径转换为绝对路径
#
# 语法
#   absolutepath.sh FILE
#
# 说明
#   将指定的相对路径转换为绝对路径，并将结果输出到标准输出

readonly SCRIPT_NAME=${0##*/}

path=$1

if [[ -z $path ]]; then
  printf '%s\n' "${SCRIPT_NAME}: missing file operand" 1>&2
  exit 1
fi

if [[ -d $path && $path != */ ]]; then
  path+=/
fi

dir=
file=

if [[ $path =~ ^(.*/)(.*)$ ]]; then
  dir=${BASH_REMATCH[1]}
  file=${BASH_REMATCH[2]}
else
  printf '%s\n' "${PWD}/${path}"
  exit 0
fi

if [[ ! -d $dir ]]; then
  printf '%s\n' "${SCRIPT_NAME}: '$dir': No such directory" 1>&2
  exit 2
fi

basedir=$(cd -- "$dir" && pwd)
if [[ $basedir == / ]]; then
  basedir=
fi
printf '%s\n' "${basedir}/${file}"
