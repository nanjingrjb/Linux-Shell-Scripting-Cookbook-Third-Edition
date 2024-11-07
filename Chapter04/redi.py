#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ************************************************************************ 
# * 
# * @file:redi.py 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-08 05:27 
# * @version 1.0  
# * @description: Python Script 
# * @Copyright (c)  all right reserved 
# * 
#************************************************************************* 

import os,sys

class redi(object):
    def __init__(self,in1,out):
        self.input=in1
        self.output=out
    def read_line(self):
        res=self.input.readline()
        self.output.write()
        return res;

if not sys.stdin.isatty():
    sys.stdin=redi(sys.stdin,sys.stdout)
a=input("a string:")
b=input("b string:")
print(repr(a),repr(b))


