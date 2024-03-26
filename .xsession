#!/bin/sh
. $HOME/.profile
. $HOME/.kshrc
xrdb -merge $HOME/.Xresources
export LC_CTYPE="en_US.UTF-8"
export GTK_IM_MODULE="xim"
export LESSCHARSET="UTF-8"

# enable scrolling with trackpoint and middle button
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

xset b off
/home/jacqueline/bin/statusbar.sh | lemonbar -p -d &
xbattbar -t 1 -I darkseagreen -i slategrey &
xsetroot -solid darkslategrey &
xidle -delay 5 -program "/usr/X11R6/bin/xlock -mode euler2d" -timeout 1200 &
setxkbmap -option compose:ralt
ulimit -Sc 0

exec cwm
