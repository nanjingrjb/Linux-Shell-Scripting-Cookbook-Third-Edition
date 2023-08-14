#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ************************************************************************ 
# * 
# * @file:pyfr.py 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-08-14 09:53 
# * @version 1.0  
# * @description: Python Script 
# * @Copyright (c)  all right reserved 
# * 
#************************************************************************* 

import os,sys

data=[]
with open("fr.txt",'r') as f:
    for line in f:
        if line.isspace():
            pass
        else:
            line=line.strip("\n")
            elm=line.split()
            data.append(elm)

sum=0
for i in data:
    print(i[0],i[1],i[2])
    price=float(i[1])
    num=float(i[2])
    sum+=price*num
print(sum)
