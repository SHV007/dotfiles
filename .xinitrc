#!/bin/sh

#startupsound
sudo nice -n -19 mpv /usr/share/sounds/intel-sound &

# xrandr
xrandr --output VGA1 --right-of HDMI1 &

# autostart programs
numlockx &
flameshot &
xautolock -time 20 -locker slock &
nitrogen --restore &

# merge xresources with xinitrc
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# statusbar clock
while true; do
	xsetroot -name "$( date +"%F %R" )"
	sleep 1m
done &

# starting window manager
exec dwm


