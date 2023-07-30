#!/bin/bash

# 文件名
#   findgrep_getopt.sh - 按照指定模式匹配目录下的文件，并输出匹配到的行
#
# 语法
#   findgrep_getopt.sh [OPTION]... PATTERN
#
# 说明
#   递归查找指定目录下的文件，并输出文件中与指定模式相匹配的行
#   匹配模式按照基本正则表达式处理
#   如果没有指定要查找的目录，则把当前目录作为查找目录

readonly SCRIPT_NAME=${0##*/}
readonly VERSION=1.0.0

print_help()
{
    cat << END
Usage: $SCRIPT_NAME [OPTION]... PATTERN
Find files in current directory recursively, and print lines which match PATTERN.
Interpret PATTERN as a basic regular expression.

  -d, --directory=DIRECTORY  find files in DIRECTORY, instead of current directory
  -s, --suffix=SUFFIX        find files which end with SUFFIX
  -i, --ignore-case          ignore case distinctions
  -n, --line-number          print line number with output lines

  --help                     display this help and exit
  --version                  display version information and exit

Example:
  $SCRIPT_NAME printf
  $SCRIPT_NAME -d work -s .html title
END
}

print_version()
{
    cat << END
$SCRIPT_NAME version $VERSION
END
}

print_error()
{
    cat << END 1>&2
$SCRIPT_NAME: $1
Try --help option for more information
END
}

parameters=$(getopt -n "$SCRIPT_NAME" \
           -o d:s:in \
           -l directory: -l suffix: -l ignore-case -l line-number \
           -l help -l version \
           -- "$@")

if [[ $? -ne 0 ]]; then
  echo 'Try --help option for more information' 1>&2
  exit 1
fi
eval set -- "$parameters"

directory=.             # 查找开始位置
find_name='*'           # 查找文件后缀
ignore_case=            # 是否指定了 -i 选项的标志
line_number=            # 是否指定了 -n 选项的标志

while [[ $# -gt 0 ]]
do
  case "$1" in
    -d | --directory)
      directory=$2
      shift 2
      ;;
    -s | --suffix)
      find_name="*$2"
      shift 2
      ;;
    -i | --ignore-case)
      ignore_case=true
      shift
      ;;
    -n | --line-number)
      line_number=true
      shift
      ;;
    --help)
      print_help
      exit 0
      ;;
    --version)
      print_version
      exit 0
      ;;
    --)
      shift
      break
      ;;
  esac
done

pattern=$1

if [[ -z $pattern ]]; then
  print_error "${SCRIPT_NAME}: missing search pattern"
  exit 1
fi

if [[ ! -d $directory ]]; then
  print_error "${SCRIPT_NAME}: '$directory': No such directory"
  exit 2
fi

grep_option=-G    # 匹配时将PATTERN作为基本正则表达式
if [[ $ignore_case == true ]]; then
  grep_option+=i
fi
if [[ $line_number == true ]]; then
  grep_option+=n
fi

find -- "$directory" -type f -name "$find_name" -print0 \
  | xargs -0 grep "$grep_option" -e "$pattern" -- /dev/null
