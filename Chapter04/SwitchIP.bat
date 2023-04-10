@echo off 
 

echo ---- 
echo 脚本变量[networkName]为网络的名称，默认为"以太网"
echo ---- 
echo 设置自动ip请按1

echo 设置固定ip请按2

echo 请选择,或按q退出...

set /p shu= 

set networkName=KillerWireless

if "%shu%"=="1" cls&goto ONE
if "%shu%"=="2" cls&goto TWO
if "%shu%"=="q" exit

:ONE
echo 正在设置网络[%networkName%]自动获得IP地址，请稍等……

netsh interface ip set address name=%networkName% source=dhcp
netsh interface ip set dns name=%networkName% source=dhcp



exit

:TWO
echo 正在设置网络[%networkName%]固定IP地址请稍等……

netsh interface ip set address name=%networkName% source=static addr=192.168.3.251 gateway=192.168.3.1 gwmetric=1
netsh interface ip set dns name=%networkName% source=static addr=180.76.76.76
netsh interface ip add dns name=%networkName% addr=223.5.5.5

::找到特定的443端口并杀死对应进程
for /f "tokens=5" %%a in ('netstat /ano ^| findstr 443') do taskkill /F /pid %%a



::关闭之前的服务

net stop vsvnjobsvc
net stop vdfssvc
net stop VisualSVNServer
::pause



::重启服务
net start vsvnjobsvc
net start vdfssvc
net start VisualSVNServer
::pause














