#! /bin/bash

#AT+MWRSSI #command to obtain radio rssi
user = "admin"
password = "password"
echo "=============== Signal strength checking ==============="
connectedIP=(192.168.168.12)

telnet $connectedIP
echo $user
echo $password

AT+MWRSSI

function getSignal(){
	# Get Mac add & signal strength
	result=0
	for i in {1..10}
	do
		output=
		((result+=$output))
	done
	((result/=10))
	echo $result
}

