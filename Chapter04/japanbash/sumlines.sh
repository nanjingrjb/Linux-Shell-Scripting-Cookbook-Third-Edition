#!/bin/bash

# 文件名
#   sumlines.sh - 计算数值的合计值
#
# 语法
#   sumlines.sh
#
# 说明
#   从标准输入读取数值，并将合计值输出到标准输出
#   规定 1 行只能输入 1 个数值
#   只能指定整数数值(包括 0 以及负数)，不能指定小数

readonly SCRIPT_NAME=${0##*/}

result=0

while IFS= read -r number
do
  if [[ ! $number =~ ^-?[0-9]+$ ]]; then
    printf '%s\n' "${SCRIPT_NAME}: '$number': non-integer number" 1>&2
    exit 1
  fi

  ((result+=number))
done

printf '%s\n' "$result"
