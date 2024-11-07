#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ************************************************************************ 
# * 
# * @file:bash_ls.py 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-06 05:24 
# * @version 1.0  
# * @description: Python Script 
# * @Copyright (c)  all right reserved 
# * 
#************************************************************************* 

import os,sys
import subprocess as sb

def callpy():
    if len(sys.argv)>=4:
        path=sys.argv[1]
        types=sys.argv[2]
        names=sys.argv[3]
        cmd="find "+path+" -type "+types+" -name "+"\'"+str(names)+"\'"
        print(cmd)
        cmd1=" ".join(["find",path,"-type",types,"-name","'"+names+"'"])
        print(cmd1)
        res=sb.getoutput(cmd1)
        print(res)
        return res
    else:
        print("usage:"+sys.argv[0]+"path types names")

callpy()
