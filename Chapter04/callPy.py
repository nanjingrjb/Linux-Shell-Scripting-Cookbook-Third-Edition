#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ************************************************************************ 
# * 
# * @file:callPy.py 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-05 15:43 
# * @version 1.0  
# * @description: Python Script 
# * @Copyright (c)  all right reserved 
# * 
#************************************************************************* 

import os,sys

def callPy():
    if len(sys.argv)<1:
        print("input num=0.")
    else:
        for i in sys.argv[1:]:
            print(i)


callPy()


