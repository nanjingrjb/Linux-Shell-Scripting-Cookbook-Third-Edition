<<<<<<< HEAD
#!/bin/bash

# ***************************************************************************
# * 
# * @file:match_phone_numb.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-28 14:56 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



while read phone
do
	if [[ "$phone" =~ ^\(?[1-9][0-9][0-9]\)?(| |-|\.)[0-9][0-9][0-9]( |-|\.)[0-9][0-9][0-9][0-9] ]];
	then
		echo "$phone,match phone"
	else
		echo "$phone,no match"
	fi

	echo "using grep -E:"
	echo "$phone"| grep -E "^\(?[1-9][0-9]{2}\)?(| |-|\.)[0-9]{3}( |-|\.)[0-9]{4}" && echo "$phone,match"||echo "$phone,no match"
done < phone.txt

=======
#!/bin/bash

# ***************************************************************************
# * 
# * @file:match_phone_numb.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-10-28 14:56 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



while read phone
do
	if [[ "$phone" =~ ^\(?[1-9][0-9][0-9]\)?(| |-|\.)[0-9][0-9][0-9]( |-|\.)[0-9][0-9][0-9][0-9] ]];
	then
		echo "$phone,match phone"
	else
		echo "$phone,no match"
	fi

	echo "using grep -E:"
	echo "$phone"| grep -E "^\(?[1-9][0-9][0-9]\)?(| |-|\.)[0-9][0-9][0-9]( |-|\.)[0-9][0-9][0-9][0-9]" && echo "$phone,match"||echo "$phone,no match"
done < phone.txt

>>>>>>> c3ffac7515e3b56dbf9ec0e252e0d732931a42b1
