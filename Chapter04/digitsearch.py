#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ************************************************************************ 
# * 
# * @file:digitsearch.py 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-29 15:11 
# * @version 1.0  
# * @description: Python Script 
# * @Copyright (c)  all right reserved 
# * 
#************************************************************************* 

import os,sys
import re
with open('mydigit.txt') as f:
    for line in f:
        print(line)
        pat=re.compile('^(11|22|33|44|55|66|77|88|99)[a-z]+$')
        if pat.match(line):
            print("match:",line)
