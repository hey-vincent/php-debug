#!/bin/sh

if [ $# -lt 1 ]
then 
	echo "invalid parameter " 
	exit 1
fi 
	

function remake(){
	killall php-fpm
	cd /Users/momo/helloworld/github/php-debug/sapi/fpm
	sudo make clean
	cd /Users/momo/helloworld/github/php-debug
	make -j 8
	clear
	start
}

function start(){
	sudo /Users/momo/helloworld/github/php-debug/sapi/fpm/php-fpm
}

function remakeV1(){
    clear
    remake
    sudo tail -f /usr/local/var/log/php-fpm.log
}

function restart(){
	sudo killall php-fpm
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
