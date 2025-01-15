#!/bin/sh
# status bar script. uses openbsd core utilities. pipe into lemonbar.

bat()
{
	if [ $(apm -a) -eq "1" ]; then
		BAT=$(echo $(apm -l)"% /" $echo $(apm -m)" min" "(ac) ")
	else
		BAT=$(echo $(apm -l)"% /" $echo $(apm -m)" min" "(bat)")
	fi
}

net()
{
	WLANSTAT=$(ifconfig iwm0 | awk '/status:/ { print $2 }')
	ETHSTAT=$(ifconfig em0 | awk '/status:/ { print $2 }')
	if [ "$WLANSTAT" = "active" ] ; then
		NET=$(echo -n "iwm0: connected")
	elif [ "$ETHSTAT" = "active" ] ; then
		NET=$(echo - n "em0: connected")
	else
		NET=$(echo -n "no connection")
	fi
}

today()
{
	DATE=$(date '+%a %d %b %R')
}

mem()
{
	MEM=$(top | grep 'Real' | cut -d: -f3 | cut -da -f1 | cut -d/ -f1)
}

cpu()
{
    CPU_TEMP=$(sysctl hw.sensors.cpu0.temp0 | cut -d= -f2 | cut -dd -f1 | cut -d. -f1)
}

vol()
{
    VOL=$(sndioctl | grep 'output.level' | cut -d= -f2 | cut -d. -f2 | cut -c 1,2)
}

while true; do
	bat
	net
	today
	mem
	cpu
	vol

    echo "  ${BAT} | ${NET}                                                                                                                  ${DATE}                                                                                                                          ${CPU_TEMP}° |${MEM} | ${VOL}% vol"
    sleep 1
done
