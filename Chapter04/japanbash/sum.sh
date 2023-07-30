#!/bin/bash

# 文件名
#   sum.sh - 计算数值的合计值
#
# 语法
#   sum.sh NUMBER...
#
# 说明
#   将参数中指定的所有数值的合计值输出到标准输出
#   只能指定整数数值(包括 0 以及负数)，不能指定小数

readonly SCRIPT_NAME=${0##*/}

result=0

for number in "$@"
do
  if [[ ! $number =~ ^-?[0-9]+$ ]]; then
    printf '%s\n' "${SCRIPT_NAME}: '$number': non-integer number" 1>&2
    exit 1
  fi

  ((result+=number))
done

printf '%s\n' "$result"
