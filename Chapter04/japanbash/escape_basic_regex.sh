#!/bin/bash

# 文件名
#   escape_basic_regex.sh - 对正则表达式中的元字符进行转义
#
# 语法
#   escape_basic_regex.sh REGEX_STRING
#
# 说明
#   使用 \ 对正则表达式中的元字符进行转义
#   并将转义后的结果输出到标准输出
#   默认按照基本正则表达式进行处理

printf '%s\n' "$1" \
 | sed 's/[.*\^$[]/\\&/g'
