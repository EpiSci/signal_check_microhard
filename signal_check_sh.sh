#!/bin/sh
Var=1
HOST='192.168.168.12'
USER='admin'
PASSWD='password'
CMD='AT+MWRSSI'
MARKER='XXXX1234:AUIE'

while [ $Var -lt 20 ]
do
(echo "$HOST" ; (
    echo unset echo
    echo open "$HOST"
    sleep 2
    echo "$USER"
    sleep 2
    echo "$PASSWD"
    sleep 2
    echo echo "$MARKER"
    sleep 2
    echo "$CMD"
    #I want to save the output from my $cmd to an varaible $Output
    #Then I want to write "$HOST - $Output" to a file named "output.txt"
    sleep 2
    echo "exit"
    ) | telnet | sed -e "1,/$MARKER/d" ) >> output.txt
Var=$((Var + 1))
done