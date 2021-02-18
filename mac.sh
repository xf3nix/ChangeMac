#!/bin/bash
E="1"
while [ E > 9 ] ;
E=$(($E+1))

if [ $E = 10 ] ;
then
    E="1"
fi

ifconfig wlan0 down

do macchanget -m 00:23:DE:10:32:7$E wlan0 ;
sleep 1

ifconfig wlan0 up
sleep 3

iw wlan0 connect TOMAS 2462

done
