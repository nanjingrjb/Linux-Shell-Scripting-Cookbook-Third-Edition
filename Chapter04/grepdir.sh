#########################################################################
# File Name: grepdir.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri Apr 14 07:39:59 2023
#########################################################################
#!/bin/bash
grep -E '[^0-9][0-9]{3} (Apr|Mar).*\.txt' dirinfo.txt
