#! /bin/bash

#AT+MWRSSI #command to obtain radio rssi
u#!/bin/sh

HOST='192.168.168.12'
USER='User'
PASSWD='Pass'
CMD='AT+MWRSSI'

(
echo open "$HOST"
sleep 2
echo "$USER"
sleep 2
echo "$PASSWD"
sleep 2
echo "$CMD"
sleep 2
echo "exit"
) | telnet

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

