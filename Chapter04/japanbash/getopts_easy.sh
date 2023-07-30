#!/bin/bash

a_flag=
b_flag=
n_arg=

while getopts abn: option
do
  case "$option" in
    a)
      # 指定了 a 选项时的处理
      a_flag=true
      ;;
    b)
      # 指定了 b 选项时的处理
      b_flag=true
      ;;
    n)
      # 指定了 n 选项时的处理
      n_arg=$OPTARG
      ;;
    \?)
      # 指定了不合法的选项时的处理
      # 或者命令行参数个数不足时的处理
      exit 1
      ;;
  esac
done
shift $((OPTIND - 1))

cat <<END
a_flag = $a_flag
b_flag = $b_flag
n_arg = $n_arg
\$1 = $1
\$2 = $2
\$2 = $3
END
