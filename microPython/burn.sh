#! /bin/bash

esptool.py --chip $1 -p /dev/tty$2 erase_flash
esptool.py --chip $1 -p /dev/tty$2 write_flash -z 0x1000 $3
