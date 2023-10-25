i#!/bin/bash

# ***************************************************************************
# * 
# * @file:strpilt.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-26 07:19 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 
v=123.456.789
<<<<<<< HEAD
echo "v=$v"
s1=${v#*.}
s2=${v%.*}
echo "s1=$s1,456.789"
echo "s2=$s2,123.456"

s3=${v##*.}
s4=${v%%.*}
echo "s3=$s3,789"
echo "s4=$s4,123"
=======
s1=${v#*.}
s2=${v%.*}
echo "s1=$s1"
echo "s2=$s2"

s3=${v##*.}
s4=${v%%.*}
echo "s3=$s3"
echo "s4=$s4"
>>>>>>> 4ea11092c3bed1111de7ba447643d1ab3f85eea4



