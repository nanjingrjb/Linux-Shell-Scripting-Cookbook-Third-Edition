#########################################################################
# File Name: greprmpho.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu Apr 13 01:14:44 2023
#########################################################################
#!/bin/bash
grep -E '^\([0-9]{3}\) [0-9]{3}-[0-9]{4}$' phonelist.txt > phonelistok.txt

diff -c  phonelist.txt phonelistok.txt
