#!/bin/bash

# 文件名
#   extract.sh - 解压文件
#
# 语法
#   extract.sh FILE...
#
# 说明
#   解压指定的压缩文件
#   可以处理的压缩文件的格式如下
#     .gz
#     .bz2
#     .xz
#     .tar
#     .tar.gz, .tgz
#     .tar.bz2, .tbz2
#     .tar.xz, .txz
#     .zip

readonly SCRIPT_NAME=${0##*/}

extract_one()
{
  local file=$1

  if [[ -z $file ]]; then
    printf '%s\n' "${SCRIPT_NAME}: missing file operand" 1>&2
    return 1
  fi

  if [[ ! -f $file ]]; then
    printf '%s\n' "${SCRIPT_NAME}: '$file': No such file" 1>&2
    return 2
  fi

  local base="${file%.*}"

  case "$file" in
    *.tar.gz | *.tgz)
      tar xzf "$file"
      ;;
    *.tar.bz2 | *.tbz2)
      tar xjf "$file"
      ;;
    *.tar.xz | *.txz)
      tar xJf "$file"
      ;;
    *.tar)
      tar xf "$file"
      ;;
    *.gz)
      gzip -dc -- "$file" > "$base"
      ;;
    *.bz2)
      bzip2 -dc -- "$file" > "$base"
      ;;
    *.xz)
      xz -dc -- "$file" > "$base"
      ;;
    *.zip)
      unzip -q -- "$file"
      ;;
    *)
      printf '%s\n' "${SCRIPT_NAME}: '$file': unexpected file type" 1>&2
      return 3
      ;;
  esac
}

if [[ $# -le 0 ]]; then
  printf '%s\n' "${SCRIPT_NAME}: missing file operand" 1>&2
  exit 1
fi

result=0
for i in "$@"
do
  extract_one "$i" || result=$?
done

exit "$result"
