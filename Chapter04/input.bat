@echo off
echo �����������ѡ��:��
echo "��ʼ������1"
echo ������������2��
echo ���˳�������q��
set /p choice=
echo "���������"%choice%


	if("%choice%"=="1") goto START
	if("%choice%"=="2") goto CONTINUE
	if("%choice%"=="q") goto QUIT
	:START
		echo "start your work"
		set /p wait= ���óɹ�����������˳�
		exit
	:CONTINUE
		echo "GO ON"
		set /p wait= ���óɹ�����������˳�
		exit
	:QUIT
		echo "BYE BYE"
		set /p wait= ���óɹ�����������˳�
		exit
	

	