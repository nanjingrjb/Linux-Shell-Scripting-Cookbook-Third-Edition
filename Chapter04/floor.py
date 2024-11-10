#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ************************************************************************ 
# * 
# * @file:floor.py 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-08 05:37 
# * @version 1.0  
# * @description: Python Script 
# * @Copyright (c)  all right reserved 
# * 
#************************************************************************* 

import os,sys
if len(sys.argv)>=2:
   print("参数输入",sys.argv[1:])
   for i in sys.argv:
       try:
           print(int(i.strip())//2)
       except:
           pass 
else:
   print("重定向输入")
   for i in sys.stdin:
       try:
           print(int(i.strip())//2)
       except:
           pass 

