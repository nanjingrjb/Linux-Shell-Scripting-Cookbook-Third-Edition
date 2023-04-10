find ./testfind -name file_[ab] -print 
find ./testfind -name file_[ab] -delete	 
find ./testfind -name file_[ab] |wc	

#采用find的条件 -type寻找
echo "寻找文件夹 find ./testfind -type d |wc"
find ./testfind -type d |wc


echo "寻找文件 find ./testfind -type f |wc"
 find ./testfind -type f |wc

 echo "寻找txt文件，大小小于100m以内，find ~ -name \*.txt -type f -size -100M"
 find ~ -name \*.txt -type f -size -100M |wc -l
