#!binbash
des_lst=("传统站","智能站"，"新一代")
path_des=/mnt/e/zzkk/管理库/应用/T接光差/固化程序/传统站
path_logic=/mnt/e/SAL_WORK/3-CFG_ALL/01_Logic/35T_DA_G
path_soft=/mnt/e/SAL_WORK/3-CFG_ALL/02_HSCfg/SAL_35T_G
path_app=/mnt/e/SAL_SRC/01_PRJ/APP_35T/Release/strip_35T_GCN
path_61850=$path_soft/SAL_*61850*
path_logic_back=$path_soft/*Logic*
cp $path_app/nsapp* $path_des 
cp $path_logic/logic* $path_des
cp $path_soft/*.inf $path_des
cp $path_61850/SAL-35T*.icd $path_des/模型
cp $path_logic_back/logic* $path_des/逻辑回放
