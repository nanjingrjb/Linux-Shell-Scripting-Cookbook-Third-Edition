#########################################################################
# File Name: findgrep.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu May 25 08:01:44 2023
#########################################################################
#!/bin/bash
#find ~/  -type f -name 'test*'|grep -E '(test_st.*)|(testf.*)\.*' |tee findgrep.txt|wc -l
find ~/  -type f -name 'test*'|grep -E 'test(_st|f|_sp).*\.*(js|conf)' |tee findgrep.txt|wc -l
