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
echo �ű�����[networkName]Ϊ��������ƣ�Ĭ��Ϊ"��̫��"
echo ---- 
echo �����Զ�ip�밴1

echo ���ù̶�ip�밴2

echo ��ѡ��,��q�˳�...

set /p shu= 

set networkName=KillerWireless

if "%shu%"=="1" cls&goto ONE
if "%shu%"=="2" cls&goto TWO
if "%shu%"=="q" exit

:ONE
echo ������������[%networkName%]�Զ����IP��ַ�����Եȡ���

netsh interface ip set address name=%networkName% source=dhcp
netsh interface ip set dns name=%networkName% source=dhcp

set /p wait= ���óɹ�����������˳�

exit

:TWO
echo ������������[%networkName%]�̶�IP��ַ���Եȡ���

netsh interface ip set address name=%networkName% source=static addr=192.168.3.251 gateway=192.168.3.1 gwmetric=1
netsh interface ip set dns name=%networkName% source=static addr=180.76.76.76
netsh interface ip add dns name=%networkName% addr=223.5.5.5
::�ҵ��ض���443�˿ڲ�ɱ����Ӧ����
for /f "tokens=5" %%a in ('netstat /ano ^| findstr 443') do taskkill /F /pid %%a

::�ر�֮ǰ�ķ���
sc stop VisualSVNServer
sc stop vsvnjobsvc
sc stop vdfssvc




::��������
sc start VisualSVNServer
sc start vsvnjobsvc
sc start vdfssvc



set /p wait= svn�������˿��ѿ���

exit





