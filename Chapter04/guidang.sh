#!binbash
des_lst=("传统站" "智能站" "新一代")
##步骤1、生成总的归档目录
path_des=/mnt/e/zzkk/管理库/应用/T接光差/固化程序
g_path=$path_des/${des_lst[0]}
gcn_path=$path_des/${des_lst[1]}
gzk_path=$path_des/${des_lst[2]}
guidang_path=($g_path $gcn_path $gzk_path)

#生成配置文件库
dev_logic_lst=("35T_G" "35T_DA_G" "35T_DA_GZK")
dev_soft_lst=("SAL_35T_G" "SAL_35T_DA_G" "SAL_35T_DA_GZK")
dev_app_lst=("strip_35T_GCN" "strip_35T_DA_G" "strip_35T_GZK")

path_logic=/mnt/e/SAL_WORK/3-CFG_ALL/01_Logic
g_logic_path=$path_logic/${dev_logic_lst[0]}
gcn_logic_path=$path_logic/${dev_logic_lst[1]}
gzk_logic_path=$path_logic/${dev_logic_lst[2]}
logic_path=($g_logic_path $gcn_logic_path $gzk_logic_path)

path_soft=/mnt/e/SAL_WORK/3-CFG_ALL/02_HSCfg
g_soft_path=$path_soft/${dev_soft_lst[0]}
gcn_soft_path=$path_soft/${dev_soft_lst[1]}
gzk_soft_path=$path_soft/${dev_soft_lst[2]}
soft_path=($g_soft_path $gcn_soft_path $gzk_soft_path)

path_app=/mnt/e/SAL_SRC/01_PRJ/APP_35T/Release
g_app_path=$path_app/${dev_app_lst[0]}
gcn_app_path=$path_app/${dev_app_lst[1]}
gzk_app_path=$path_app/${dev_app_lst[2]}
app_path=($g_app_path $gcn_app_path $gzk_app_path)


path_61850=$path_soft/SAL_*61850*
path_logic_back=$path_soft/*Logic*

for i in {0..2};do
   ##ls  ${app_path[$i]}/nsapp*
   ##ls  ${guidang_path[$i]}
   find   ${app_path[$i]} -type f -name nsapp* | xargs -I  {} cp {}  ${guidang_path[$i]}
   find   ${soft_path[$i]} -type f -name *.inf | xargs -I  {} cp {}  ${guidang_path[$i]}
   find   ${logic_path[$i]} -type f -name "logic.*" | xargs -I  {} cp {}  ${guidang_path[$i]}
   ##echo   ${soft_path[$i]}/SAL_*61850*
   find   ${soft_path[$i]}/SAL_*61850* -type f -name SAL*35*.icd | xargs -I  {} cp {}  ${guidang_path[$i]}/模型
   ##echo   ${soft_path[$i]}/*Logic*
   find   ${soft_path[$i]}/*Logic* -type f -name "logic*" | xargs -I  {} cp {}  ${guidang_path[$i]}/逻辑回放
   
   tree ${guidang_path[$i]}
done   
##cp $path_logic/logic* $path_des
##cp $path_soft/*.inf $path_des
##cp $path_61850/SAL-35T*.icd $path_des/模型
##cp $path_logic_back/logic* $path_des/逻辑回放



##::echo $g_path
##::echo $gcn_path
##::echo $gzk_path

##echo ${device_path[*]}


