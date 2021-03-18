#!/bin/sh


#sudo rm /etc/localtime
#timezone="New_York"
#sudo ln -s /usr/share/zoneinfo/America/${timezone} /etc/localtime
#sudo ntpd -qg
#echo "\n tiemdatectl status"
#timedatectl status | grep $timezone
#echo "restart i3"

exec i3
xset -dpms s off

#sudo ln -s /usr/share/zoneinfo/America/New_York /etc/localtime
#sudo ntpd -qg
