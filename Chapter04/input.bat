@echo off

for /l %%a in (1,1,3) do (
echo %%a judge
set /p xz=
echo %xz%
if %xz%==1 echo "ok"
if %xz%==2 echo "bad"
if %xz%==3 echo "cancel"

)
pause




	

	