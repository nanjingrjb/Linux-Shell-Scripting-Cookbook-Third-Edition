@echo off 
 

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



exit

:TWO
echo ������������[%networkName%]�̶�IP��ַ���Եȡ���

netsh interface ip set address name=%networkName% source=static addr=192.168.3.251 gateway=192.168.3.1 gwmetric=1
netsh interface ip set dns name=%networkName% source=static addr=180.76.76.76
netsh interface ip add dns name=%networkName% addr=223.5.5.5

::�ҵ��ض���443�˿ڲ�ɱ����Ӧ����
for /f "tokens=5" %%a in ('netstat /ano ^| findstr 443') do taskkill /F /pid %%a



::�ر�֮ǰ�ķ���

net stop vsvnjobsvc
net stop vdfssvc
net stop VisualSVNServer
::pause



::��������
net start vsvnjobsvc
net start vdfssvc
net start VisualSVNServer
::pause














