#! /bin/bash

#AT+MWRSSI #command to obtain radio rssi
Var=1
while [ $Var -lt 20 ]
do
HOST='192.168.168.12'$Var
USER='admin'
PASSWD='password'
CMD='AT+MWRSSI'
MARKER='XXXX1234:AUIE'

(echo "$HOST - " ; (
    echo unset echo
    echo open "$HOST"
    sleep 1
    echo "$USER"
    sleep 1
    echo "$PASSWD"
    sleep 1
    echo echo "$MARKER"
    echo "$CMD"
    #I want to save the output from my $cmd to an varaible $Output
    #Then I want to write "$HOST - $Output" to a file named "output.txt"
    sleep 2
    echo "exit"
    ) | telnet | sed -e "1,/$MARKER/d" ) >> output.txt
Var=$((Var + 1))
done