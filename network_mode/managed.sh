#! /bin/bash

ifconfig wlo1 down
macchanger -p wlo1
iwconfig wlo1 mode managed
ifconfig wlo1 up
iwconfig wlo1 | grep Mode
service network-manager restart
