#! /bin/bash

#AT+MWRSSI #command to obtain radio rssi


HOST='192.168.168.12'
USER='admin'
PASSWD='password'
CMD='AT+MWRSSI'

(
echo open "$HOST"
sleep 0.25
echo "$USER"
sleep 0.25
echo "$PASSWD"
sleep 0.25
r=0
while [[ $r < 20 ]]
do
	echo "$CMD"
	sleep 0.5
	r+=1
done
echo "exit"
) | telnet 


