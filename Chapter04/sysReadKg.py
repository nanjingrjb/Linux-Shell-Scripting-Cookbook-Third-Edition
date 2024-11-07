# coding=gb2312

import os,sys
from bs4 import BeautifulSoup
import pandas as pd
import glob
import subprocess as sb
from pathlib import Path
import time

def loadsysfile(path):
    try:
        with open(path,encoding='gb2312') as f:
            html=f.read()
        soup = BeautifulSoup(html,'xml')
    except:
        print("error",path)
    return soup

def findSepcDataSet(soup,DStag,DSattrDic=None,dataAttrDiStr='G[fb="0"]'):
    dataset=soup.find(DStag,attrs=DSattrDic)
    alldata=[]
    #根据数据属性来解读,当有fb的数据属性时，才处理;反之直接返回数据(待增加)
    try:
        for i,a in enumerate(dataset.select(dataAttrDiStr)):
            dic=a.attrs
            alldata.append(dic)
            #alldata.append(data)    
    except:
        pass
    return pd.DataFrame(alldata)

def getSetKg(path):
#先用find找到对应的tag，然后用tag的select属性得到数据集
#最后根据数据集中的项目（实际为tag），配合属性来读取数据
    soup=loadsysfile(path)
    if '南网' in path:
        pd_set_float=findSepcDataSet(soup,'PG',{'d':'保护定值'})
        pd_set_kg=findSepcDataSet(soup,'PG',{'d':'保护控制字'})
    else:
        pd_set_float=findSepcDataSet(soup,'PG',{'d':'数值型定值'})
        pd_set_kg=findSepcDataSet(soup,'PG',{'d':'控制字定值'})
    
    ret=[]
    try:
        for i in pd_set_float['d']:
            ret.append(i)
        for i in pd_set_kg['d']:
            ret.append(i)
    except:
        print('error:',path)
    return ret

    
def getAllSetKg(startPath,des='sys.inf'):
    #os.chdir(startPath)
    #print(startPath)
    path=startPath.joinpath('*').joinpath('*.inf')
    pathLst=glob.glob(str(path), recursive=True)
    allVal=list()
    for path in pathLst:
      ret=getSetKg(path)
      for i in ret:
          allVal.append(i)
    allVal=list(set(allVal))       
    return set(allVal)

def main():
    if len(sys.argv)>1:
        #startPath="E:/SAL_WORK/3-CFG_ALL/02_HSCfg"
        startPath=Path(sys.argv[1])
        print("path=",startPath)
        #cmd=' '.join(['bash','copysys.sh',str(startPath)])
        #print("cmd=",cmd)
        dirPath=Path(startPath).joinpath('sysall')
        filePath=dirPath.joinpath('set.txt')
        #print("dirpath=",dirPath)
        #print("filepath=",filePath)
        allsetKg=getAllSetKg(dirPath)
        with open(filePath,'w') as f:
            for i in allsetKg:
                print(i,file=f)
    else:
        print("usage:"+" "+sys.argv[0] +" path_str")
            
if __name__=='__main__':
    main()