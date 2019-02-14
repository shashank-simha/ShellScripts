#! /bin/bash

ifconfig wlo1 down
iwconfig wlo1 mode monitor
ifconfig wlo1 up
iwconfig wlo1 | grep Mode
