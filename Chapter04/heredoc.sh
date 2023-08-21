#!/bin/bash

# ***************************************************************************
# * 
# * @file:heredoc.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-08-20 09:13 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 






echo "this is a test for here doc"
:<<test
i am just a line,
can you see me?
I don't think you can see me.
Because I am in here doc.
test

echo "ok,Can you see me now?"


echo "other example"
:<<myline
if you can see it please tell me.
I wish it works,
but i am not sure.
Thank you for your work.
myline
echo "I am out now."
set -x
m=$(bc << EOF
scale=4
a=4
b=1.2
a*b
EOF
)
set +x
echo "$m"
