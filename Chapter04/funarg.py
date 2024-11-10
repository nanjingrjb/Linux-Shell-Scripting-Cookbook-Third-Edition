#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ************************************************************************ 
# * 
# * @file:funarg.py 
# * @author:nanjingrjb@gmail.com 
# * @date:2024-11-05 13:07 
# * @version 1.0  
# * @description: Python Script 
# @Copyright (c) all rights reserved  
#  
#*************************************************************************  
  
import sys  
  
def main():  
    print("num of arguments =", len(sys.argv))  
    if len(sys.argv) > 1:  
        print("Script name =", sys.argv[0])  
        for i, arg in enumerate(sys.argv[1:], start=1):  
            print(f"Argument {i} = {arg}")  
    else:  
        print("No arguments provided.")  
  
if __name__ == "__main__":  
    main()