#!/usr/bin/expect

#If it all goes pear shaped the script will timeout after 20 seconds.
set timeout 60
#First argument is assigned to the variable name
set name [lindex $argv 0]
#Second argument is assigned to the variable user
set user [lindex $argv 1]
#Third argument is assigned to the variable password
set password [lindex $argv 2]
#This spawns the telnet program and connects it to the variable name
spawn telnet $name 
#The script expects login
expect "UserDevice login:" 
#The script sends the user variable
send "$user "
sleep 2
#The script expects Password
expect "Password:"
#The script sends the password variable
send "$password "
sleep 2
#This hands control of the keyboard over to you (Nice expect feature!)
send "AT+MWRSSI"