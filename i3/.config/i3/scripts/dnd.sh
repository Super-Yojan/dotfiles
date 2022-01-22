#!/bin/bash

file='/home/yojang/.config/i3/scripts/status.txt'
while read line; do
	export doNotDisturbe=$line
done < $file


if [ $doNotDisturbe == 0 ]; then
	notify-send "Do Not Disturbe Started"
	rm /home/yojang/.config/i3/scripts/status.txt
	echo 1 >> /home/yojang/.config/i3/scripts/status.txt
	sleep 7s
	dunstctl set-paused true
else
	dunstctl set-paused false
	notify-send "Do Not Disturbe Stopped"
	rm /home/yojang/.config/i3/scripts/status.txt
	echo 0 >> /home/yojang/.config/i3/scripts/status.txt
fi
