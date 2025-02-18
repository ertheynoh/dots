#!/bin/sh

export LC_CTYPE="en_US.UTF-8"
export GTK_IM_MODULE="xim"
export LESSCHARSET="UTF-8"

export PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:/usr/games:$HOME/.local/share/gem/ruby/3.3/bin
export ENV=$HOME/.kshrc

xset b off
setxkbmap -option compose:ralt
xrdb -merge $HOME/.Xresources
ulimit -Sc 0

# enable scrolling with trackpoint and middle button
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

xsetroot -bitmap ~/pictures/bitmap-walls/bw-bgnd/leaves.xbm -fg "#8caba8" -bg "#dfdfde" &
$HOME/bin/statusbar.sh | lemonbar -p -d &
xbattbar -t 2 -I darkseagreen -i slategrey &
xidle -timeout 1200 &

exec cwm
