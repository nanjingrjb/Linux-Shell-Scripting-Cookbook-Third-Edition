@echo off
echo “请输入你的选择:”
echo "开始请输入1"
echo “继续请输入2”
echo “退出请输入q”
set /p choice=
echo "你输入的是"%choice%


	if("%choice%"=="1") goto START
	if("%choice%"=="2") goto CONTINUE
	if("%choice%"=="q") goto QUIT
	:START
		echo "start your work"
		set /p wait= 设置成功，按任意键退出
		exit
	:CONTINUE
		echo "GO ON"
		set /p wait= 设置成功，按任意键退出
		exit
	:QUIT
		echo "BYE BYE"
		set /p wait= 设置成功，按任意键退出
		exit
	

	