#!/usr/bin/bash
state=$(xset -q | sed -n 's/^.*Num Lock:\s*\(\S*\).*$/\1/p')

if [[ "$state" == "off" ]]; then
	sudo brightnessctl -d asus-wireless::airplane set 0 & sleep 1
elif [[ "$state" == "on" ]]; then
        sudo brightnessctl -d asus-wireless::airplane set 1 & sleep 1
fi

exec $0
