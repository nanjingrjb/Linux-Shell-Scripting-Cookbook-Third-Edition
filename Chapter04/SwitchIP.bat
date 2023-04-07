@echo off 
 
:: BatchGotAdmin 
:------------------------------------- 
REM --> Check for permissions 
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system" 
 
REM --> If error flag set, we do not have admin. 
if '%errorlevel%' NEQ '0' ( 
 goto UACPrompt 
) else ( goto gotAdmin ) 
 
:UACPrompt 
 echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs" 
 echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs" 
 
 "%temp%\getadmin.vbs" 
 exit /B 
 
:gotAdmin 
 if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" ) 
 pushd "%CD%" 
 CD /D "%~dp0" 
:-------------------------------------- 
echo ---- 
echo 脚本变量[networkName]为网络的名称，默认为"以太网"
echo ---- 
echo 设置自动ip请按1

echo 设置固定ip请按2

echo 请选择,或按q退出...

set /p shu= 

set networkName=wlan

if "%shu%"=="1" cls&goto ONE
if "%shu%"=="2" cls&goto TWO
if "%shu%"=="q" exit

:ONE
echo 正在设置网络[%networkName%]自动获得IP地址，请稍等……

netsh interface ip set address name=%networkName% source=dhcp
netsh interface ip set dns name=%networkName% source=dhcp

set /p wait= 设置成功，按任意键退出

exit

:TWO
echo 正在设置网络[%networkName%]固定IP地址请稍等……

netsh interface ip set address name=%networkName% source=static addr=192.168.3.251 gateway=192.168.3.1 gwmetric=1
netsh interface ip set dns name=%networkName% source=static addr=180.76.76.76
netsh interface ip add dns name=%networkName% addr=223.5.5.5


set /p wait= 设置成功，按任意键退出

exit





