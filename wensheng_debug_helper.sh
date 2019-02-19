#!/bin/sh

if [ $# -lt 1 ]
then 
	echo "invalid parameter " 
	exit 1
fi 
	

function remake(){
	killall php-fpm
	cd /Users/momo/helloworld/github/php-debug/sapi/fpm
	make clean
	cd /Users/momo/helloworld/github/php-debug
	make -j 8
	clear
	start
}

function start(){
	/Users/momo/helloworld/github/php-debug/sapi/fpm/php-fpm
}

function remakeV1(){
    clear
    remake
    tail -f /usr/local/var/log/php-fpm.log
}

function restart(){
	killall php-fpm
	start
}


if [ $1 = "remake" ]
then
	remakeV1
elif [ $1 = "restart" ]
then
	restart
else
	echo "nothing"
fi
