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
