#!/bin/bash
# newrm--A replacement for the existing rm command.
#   This script provides a 
#   rudimentary unremove capability by creating and utilizing a new 
#   directory within the user's home directory. It can handle directories
#   of content as well as individual files. If the user specifies
#   the -f flag, files are removed and NOT archived.

# Big Important Warning: You'll want a cron job or something similar to keep 
#   the trash directories tamed. Otherwise, nothing will ever actually
#   be deleted from the system, and you'll run out of disk space!

archivedir="$HOME/.deleted-files"
realrm="$(which rm)"
copy="$(which cp) -R"

if [ $# -eq 0 ] ; then  # let 'rm' output the usage error 
  exec $realrm  # our shell is replaced by /bin/rm
fi

# Parse all options looking for '-f'

flags=""

while getopts "dfiPRrvW" opt
do
  case $opt in
    f ) exec $realrm "$@"     ;;  # exec lets us exit this script directly.
    * ) flags="$flags -$opt"  ;;  # other flags are for 'rm', not us
  esac
done
shift $(( $OPTIND - 1 ))

# BEGIN MAIN SCRIPT
# =================

# Make sure that the $archivedir exists

if [ ! -d $archivedir ] ; then
  if [ ! -w $HOME ] ; then
    echo "$0 failed: can't create $archivedir in $HOME" >&2 
    exit 1
  fi
  mkdir $archivedir
  chmod 700 $archivedir# a little bit of privacy, please
fi
set -x
for arg 
do
  newname="$archivedir/$(date "+%S.%M.%H.%d.%m").$(basename "$arg")"
  if [ -f "$arg" -o -d "$arg" ] ; then
    $copy "$arg" "$newname"	
  fi
done
set +x

exec $realrm $flags "$@"        # our shell is replaced by realrm
