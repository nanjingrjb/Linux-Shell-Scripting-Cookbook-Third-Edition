#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ************************************************************************ 
# * 
# * @file:sub_bash.py 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-05 18:12 
# * @version 1.0  
# * @description: Python Script 
# * @Copyright (c)  all right reserved 
# * 
#************************************************************************* 

import os,sys
import subprocess as sb

cmd="find . -type f -name '*.sh'|wc -l"
res=sb.getoutput(cmd)
print(res)

