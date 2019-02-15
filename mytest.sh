#!/bin/sh

if [ $# -lt 1 ]
then 
	echo "invalid parameter " 
	exit 1
fi 
	

function remake(){
	killall php-fpm
	cd /Users/momo/helloworld/php-source-code-reading/sapi/fpm
	make clean
	cd /Users/momo/helloworld/php-source-code-reading
	make -j 8
	clear
	start
}

function start(){
	/Users/momo/helloworld/php-source-code-reading/sapi/fpm/php-fpm
}


function restart(){
	killall php-fpm
	start
}


if [ $1 = "remake" ]
then
	remake
elif [ $1 = "restart" ]
then
	restart
else
	echo "nothing"
fi
