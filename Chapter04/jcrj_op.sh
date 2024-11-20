wsl
cd /mnt/e
find /mnt/e -maxdepth 2 -type d -print >mydir 2>/dev/null
#处理mydir文件，将其转化为window目录


sed -i 's!/mnt/e/!e:\\!g;s!\/!\\!g' mydir
sed -i '1d'mydir
./scp_k60 mydir
exit
