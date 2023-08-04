#########################################################################
# File Name: findfile_verbose.sh
# Author: nanjingrjb
# mail: nanjingrjbgmail.com/g
# Created Time: Fri Aug  4 09:43:15 2023
#########################################################################
#!/bin/bash

#采用grep -v 来找出未包含某个字符的单词

findword()
{
	regIn="$1"
	regout="$2"

	echo "contain $regIn words is:"	
	grep -E "$regIn" /usr/share/dict/words
	echo "from list,not contain $regout is:"
	grep -E "$regIn" /usr/share/dict/words |grep -Ev "$regout"
}
findword "$@"
