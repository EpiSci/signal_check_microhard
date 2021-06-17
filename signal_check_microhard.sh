#! /bin/bash

#AT+MWRSSI #command to obtain radio rssi
timestamp() {
  date +"%T" # current time
}

HOST='192.168.168.1'
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
while true
do
	echo "$CMD"
	timestamp
	sleep 0.25
	r+=1
done
echo "exit"
) | telnet | tee rssi_output.txt 


