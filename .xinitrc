#!/bin/sh

# xrandr
xrandr --output VGA1 --right-of HDMI1 &

# autostart programs
numlockx &
xautolock -time 20 -locker slock &
xcompmgr -c -o.85 &
xwallpaper --maximize ~/pics/wall/anime-girl-reading-summer-clouds-scenic-short-hair.jpg 

# statusbar clock
while true; do
	xsetroot -name "$( date +"%F %R" )"
	sleep 1m
done &

# starting window manager
exec dwm


