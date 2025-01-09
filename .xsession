#!/bin/sh

export LC_CTYPE="en_US.UTF-8"
export GTK_IM_MODULE="xim"
export LESSCHARSET="UTF-8"

export PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:/usr/games
export ENV=$HOME/.kshrc

xset b off
setxkbmap -option compose:ralt
xrdb -merge $HOME/.Xresources
ulimit -Sc 0

xwallpaper --stretch $HOME/pictures/macOS_wallpapers/Leaves.jpg &
$HOME/bin/statusbar.sh | lemonbar -p -d &
xbattbar -t 2 -I darkseagreen -i slategrey &
xidle -timeout 1200 &

exec cwm
