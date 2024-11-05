# coding=gb2312

import os,sys
from bs4 import BeautifulSoup
import pandas as pd
import glob

def loadsysfile(path):
    with open(path,encoding='gb2312') as f:
        html=f.read()
    soup = BeautifulSoup(html,'xml')
    return soup

def findSepcDataSet(soup,DStag,DSattrDic=None,dataAttrDiStr='G[fb="0"]'):
    dataset=soup.find(DStag,attrs=DSattrDic)
    alldata=[]
    #�����������������,����fb����������ʱ���Ŵ���;��ֱ֮�ӷ�������(������)
    try:
        for i,a in enumerate(dataset.select(dataAttrDiStr)):
            dic=a.attrs
            alldata.append(dic)
            #alldata.append(data)    
    except:
        pass
    return pd.DataFrame(alldata)

def getSetKg(path):
#����find�ҵ���Ӧ��tag��Ȼ����tag��select���Եõ����ݼ�
#���������ݼ��е���Ŀ��ʵ��Ϊtag���������������ȡ����
    soup=loadsysfile(path)
    if '����' in path:
        pd_set_float=findSepcDataSet(soup,'PG',{'d':'������ֵ'})
        pd_set_kg=findSepcDataSet(soup,'PG',{'d':'����������'})
    else:
        pd_set_float=findSepcDataSet(soup,'PG',{'d':'��ֵ�Ͷ�ֵ'})
        pd_set_kg=findSepcDataSet(soup,'PG',{'d':'�����ֶ�ֵ'})
    
    ret=[]
    try:
        for i in pd_set_float['d']:
            ret.append(i)
        for i in pd_set_kg['d']:
            ret.append(i)
    except:
        print('error:',path)
    return ret
def findAllSys(startPath,des='sys.inf'):
    os.chdir(startPath)
    lst=glob.glob("./**/*.inf", recursive=True)
    
def getAllSetKg(startPath,des='sys.inf'):
    os.chdir(startPath)
    pathLst=glob.glob("./**/*.inf", recursive=True)
    allVal=list()
    for path in pathLst:
      ret=getSetKg(path)
      for i in ret:
          allVal.append(i)
    allVal=list(set(allVal))       
    return set(allVal)

startPath="E:/SAL_WORK/3-CFG_ALL/02_HSCfg/sysall"
allsetKg=getAllSetKg(startPath)
with open('set.txt','w') as f:
    for i in allsetKg:
        print(i,file=f)