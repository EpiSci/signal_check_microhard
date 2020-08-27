#! /bin/bash

#AT+MWRSSI #command to obtain radio rssi


HOST='192.168.168.12'
USER='admin'
PASSWD='password'
CMD='AT+MWRSSI'


(
echo open "$HOST"
#sleep 1
echo "$USER"
#sleep 1
echo "$PASSWD"
#sleep 1
echo "$CMD"
#sleep 1
echo "exit"
) | telnet 


