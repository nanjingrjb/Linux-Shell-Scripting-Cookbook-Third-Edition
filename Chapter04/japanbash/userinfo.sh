#########################################################################
# File Name: userinfo.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Sat Jul 29 21:48:48 2023
#########################################################################
#!/bin/bash
userinfo()
{
	user=$1
	cat /etc/passwd|\
		grep "^${user}:"|\
		{
      IFS=: read -r user passwd userid gpid comm homedir logshell
	if [[ $? -ne 0 ]]
	 then
		echo error
		exit 2
	fi
	cat << END
	usr = $user
	userid = $userid
	gid = $gpid
	homdir = $homedir
	logs = $logshell
	END
}

userinfo "$@"
