#!/bin/bash

# 文件名
#   trash.sh - 在命令行中管理回收站
#
# 语法
#   trash.sh put [OPTION]... FILE...
#   trash.sh list [OPTION]...
#   trash.sh restore [OPTION]... FILE [NUMBER]
#
# 说明
#   用于管理回收站的 shell 脚本 支持如下操作:
#   - 将文件移动到回收站
#   - 输出回收站中的文件列表
#   - 将回收站中的文件恢复到原位置
#
#   回收站使用的目录通过环境变量 TRASH_DIRECTORY 设置
#   如果没有设置这个环境变量，则默认使用 $HOME/.Trash 保存回收站中的文件


readonly SCRIPT_NAME=${0##*/}
readonly VERSION=1.0.0
readonly DEFAULT_TRASH_BASE_DIRECTORY=$HOME/.Trash
readonly TRASH_FILE_DIRECTORY_NAME=files
readonly TRASH_INFO_DIRECTORY_NAME=info

print_help()
{
    cat << END
Usage: $SCRIPT_NAME put [OPTION]... FILE...           (1st form)
  or:  $SCRIPT_NAME list [OPTION]...                  (2nd form)
  or:  $SCRIPT_NAME restore [OPTION]... FILE [NUMBER] (3rd form)

In the 1st form, put FILE to the trashcan.
In the 2nd forms, list items in the trashcan.
In the 3rd form, restore FILE from the trashcan.

OPTIONS
  -d, --directory=DIRECTORY  specify trashcan directory
  --help                     display this help and exit
  --version                  display version information and exit

Default trashcan directory is '$DEFAULT_TRASH_BASE_DIRECTORY'.
You can specify the directory with TRASH_DIRECTORY environment variable
or -d/--directory option.
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

# 使用 \ 对正则表达式的元字符进行转义，并将转义后的结果输出到标准输出
# 默认按照基本正则表达式处理
# 参数
#   $1 : 正则表达式字符串
escape_basic_regex()
{
  printf '%s\n' "$1" | sed 's/[.*\^$[]/\\&/g'
}

# 对回收站目录进行初始化
# 参数
#   $1 : 回收站目录
trash_init()
{
  local trash_base_directory=$1
  local trash_file_directory=${trash_base_directory}/${TRASH_FILE_DIRECTORY_NAME}
  local trash_info_directory=${trash_base_directory}/${TRASH_INFO_DIRECTORY_NAME}

  if [[ ! -d $trash_base_directory ]]; then
    mkdir -p -- "$trash_base_directory" || return 1
  fi

  if [[ ! -d $trash_file_directory ]]; then
    mkdir -p -- "$trash_file_directory" || return 1
  fi

  if [[ ! -d $trash_info_directory ]]; then
    mkdir -p -- "$trash_info_directory" || return 1
  fi
}

# 用于检查回收站目录是否存在的函数
# 若回收站目录存在则返回 0，不存在则返回 1
# 参数
#   $1 : 回收站目录
trash_directory_is_exists()
{
  local trash_base_directory=$1
  local trash_file_directory=${trash_base_directory}/${TRASH_FILE_DIRECTORY_NAME}
  local trash_info_directory=${trash_base_directory}/${TRASH_INFO_DIRECTORY_NAME}

  if [[ ! -d $trash_base_directory ]]; then
    print_error "'$trash_base_directory': Trash directory not found"
    return 1
  fi

  if [[ ! -d $trash_file_directory ]]; then
    print_error "'$trash_file_directory': Trash directory not found"
    return 1
  fi

  if [[ ! -d $trash_info_directory ]]; then
    print_error "'$trash_info_directory': Trash directory not found"
    return 1
  fi

  return 0
}

# 用于将文件移动到回收站的函数
# 参数
#   $1 : 回收站目录
#   $2 : 移动对象的文件路径
trash_put()
{
  local trash_base_directory=$1
  local file_path=$2

  if [[ ! -e $file_path ]]; then
    print_error "'$file_path': File not found"
    return 1
  fi

  # 如果文件为相对路径，则先将其转换为绝对路径形式
  # 即使是目录，也不需要在末尾添加 /
  file_path=$(realpath -- "$file_path")
  local file=${file_path##*/}

  if [[ -z $file ]]; then
    print_error "'$file_path': Can not trash file or directory"
    return 1
  fi

  local trash_file_directory=${trash_base_directory}/${TRASH_FILE_DIRECTORY_NAME}
  local trash_info_directory=${trash_base_directory}/${TRASH_INFO_DIRECTORY_NAME}

  # 移动到回收站之后的文件名
  local trashed_file_name=$file
  if [[ -e ${trash_file_directory}/${trashed_file_name} ]]; then
    # 为了避免回收站目录中的文件名重复，
    # 如果已经存在同名文件，那么在文件末尾添加从1开始的编号
    # 比如 file1.txt, file1.txt_1, file1.txt_2

    local rescape_file_name
    rescape_file_name=$(escape_basic_regex "$file")
    local current_max_number
    current_max_number=$(
      find -- "$trash_file_directory" -mindepth 1 -maxdepth 1 -printf '%f\n' \
        | grep -e "^${rescape_file_name}\$" -e "^${rescape_file_name}_[0-9][0-9]*\$" \
        | sed "s/^${rescape_file_name}_\\{0,1\\}//" \
        | sed 's/^$/0/' \
        | sort -n -r \
        | head -n 1
    )
    trashed_file_name+="_$((current_max_number + 1))"
  fi

  trash_init "$trash_base_directory" || return 2

  mv -- "$file_path" "${trash_file_directory}/${trashed_file_name}" \
    || return 3

  # 以 YYYY-MM-DDThh:mm:ss 的格式输出 DeletionDate。时区为本地时区
  # 示例 : 2018-09-12T19:11:27
  cat <<END > "${trash_info_directory}/${trashed_file_name}.trashinfo"
[Trash Info]
Path=$file_path
DeletionDate=$(date '+%Y-%m-%dT%H:%M:%S')
END

}

# 输出 trashinfo 文件中的内容
# 参数
#   $1 : trashinfo文件路径
# trashinfo 文件内的格式
#   [Trash Info]
#   Path=/home/xxx/tmp/2015-07-16/file1.txt
#   DeletionDate=2018-09-20T21:37:16
# 输出格式
#   2018-09-20T21:37:16 /home/xxx/tmp/2015-07-16/file1.txt
#   2018-09-20T21:37:16 /home/xxx/tmp/2015-07-16/file1.txt 1
print_trashinfo()
{
  local trashinfo_file_path=$1
  local line=
  local -A info

  # 使用 = 分隔输入文件中的内容，并将结果保存到关联数组
  while IFS= read -r line
  do
    if [[ $line =~ ^([^=]+)=(.*)$ ]]; then
      info["${BASH_REMATCH[1]}"]=${BASH_REMATCH[2]}
    fi
  done < "$trashinfo_file_path"

  local trashinfo_file_name=${trashinfo_file_path##*/}
  local restore_file_name=${info[Path]##*/}
  local rescape_restore_file_name
  rescape_restore_file_name=$(escape_basic_regex "$restore_file_name")

  # 输出要恢复的文件名末尾的文件编号
  local file_number
  file_number=$(
    printf '%s' "$trashinfo_file_name" \
      | sed -e 's/\.trashinfo$//' -e "s/^${rescape_restore_file_name}_\\{0,1\\}//"
  )

  printf '%s %s %s\n' "${info[DeletionDate]}" "${info[Path]}" "$file_number"
}

# 显示回收站中的文件列表
# 参数
#   $1 : 回收站目录
trash_list()
{
  local trash_base_directory=$1
  local trash_info_directory=${trash_base_directory}/${TRASH_INFO_DIRECTORY_NAME}

  trash_directory_is_exists "$trash_base_directory" || return 1

  local path=
  find -- "$trash_info_directory" -mindepth 1 -maxdepth 1 -type f -name '*.trashinfo' -print \
    | sort \
    | while IFS= read -r path
      do
        print_trashinfo "$path"
      done
}

# 将回收站中的文件恢复到原来的位置
# 参数
#   $1 : 回收站目录
#   $2 : 要恢复的原文件名
#   $3 : 文件编号 (可以省略)
trash_restore()
{
  local trash_base_directory=$1
  local file_name=$2
  local file_number=$3
  local trash_file_directory=${trash_base_directory}/${TRASH_FILE_DIRECTORY_NAME}
  local trash_info_directory=${trash_base_directory}/${TRASH_INFO_DIRECTORY_NAME}

  trash_directory_is_exists "$trash_base_directory" || return 1

  if [[ -z $file_name ]]; then
    print_error 'missing file operand'
    return 1
  fi

  # 如果没有指定文件编号，则直接使用文件名
  # 如果指定了文件编号，则查找“文件名 _ 文件编号”文件并恢复
  local restore_target_name=
  if [[ -z $file_number ]]; then
    restore_target_name=$file_name
  else
    restore_target_name=${file_name}_${file_number}
  fi

  local restore_trashinfo_path=${trash_info_directory}/${restore_target_name}.trashinfo
  local restore_from_path=${trash_file_directory}/${restore_target_name}
  if [[ ! -f $restore_trashinfo_path || ! -e $restore_from_path ]]; then
    print_error "'$restore_target_name': File not found"
    return 2
  fi

  local restore_to_path
  restore_to_path=$(grep '^Path=' -- "$restore_trashinfo_path" | sed 's/^Path=//')
  if [[ -z $restore_to_path ]]; then
    print_error "'$restore_trashinfo_path': Restore path not found"
    return 2
  fi

  # 如果 trashinfo 文件中保存的要恢复的原文件名和指定的文件名不一致，则报错
  local restore_to_file=${restore_to_path##*/}
  if [[ $file_name != "$restore_to_file" ]]; then
    print_error "'$restore_target_name': File not found"
    return 2
  fi

  # 如果要恢复的原文件已经存在，则不覆盖该文件，直接报错
  if [[ -e "$restore_to_path" ]]; then
    print_error "can not restore '$restore_to_path': File already exists"
    return 3
  fi

  # 在必要时创建要恢复的原文件的父目录
  local restore_base_path=${restore_to_path%/*}
  if [[ -n $restore_base_path && ! -d $restore_base_path ]]; then
    mkdir -p -- "$restore_base_path" || return 4
  fi

  mv -- "$restore_from_path" "$restore_to_path" || return 5
  rm -- "$restore_trashinfo_path"
}

sub_command=

case "$1" in
  put | list | restore)
    sub_command=$1
    shift
    ;;
  --help | help)
    print_help
    exit 0
    ;;
  --version | version)
    print_version
    exit 0
    ;;
  '')
    print_error 'missing command'
    exit 1
    ;;
  *)
    print_error "'$1': Unknown command"
    exit 1
    ;;
esac

parameters=$(getopt -n "$SCRIPT_NAME" \
           -o d: \
           -l directory: \
           -l help -l version \
           -- "$@")

if [[ $? -ne 0 ]]; then
  echo 'Try --help option for more information' 1>&2
  exit 1
fi
eval set -- "$parameters"

# TRASH_DIRECTORY可以在调用该脚本的地方使用环境变量来设置
trash_base_directory=${TRASH_DIRECTORY:-$DEFAULT_TRASH_BASE_DIRECTORY}

while [[ $# -gt 0 ]]
do
  case "$1" in
    -d | --directory)
      trash_base_directory=$2
      shift 2
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

if [[ -z $trash_base_directory ]]; then
  print_error 'missing directory operand'
  exit 1
fi

result=0

if [[ $sub_command == put ]]; then
  if [[ $# -le 0 ]]; then
    print_error 'missing file operand'
    exit 1
  fi

  for i in "$@"
  do
    trash_put "$trash_base_directory" "$i" || result=$?
  done

elif [[ $sub_command == list ]]; then
  trash_list "$trash_base_directory"
  result=$?

elif [[ $sub_command == restore ]]; then
  if [[ $# -le 0 ]]; then
    print_error 'missing file operand'
    exit 1
  fi

  trash_restore "$trash_base_directory" "$1" "$2"
  result=$?

fi

exit "$result"
