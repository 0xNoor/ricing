#!/usr/bin/bash

state=$(cat /sys/devices/platform/faustus/throttle_thermal_policy)
if [[ "$state" == "0" ]]; then
	echo ""
elif [[ "$state" == "1" ]]; then
	echo ""
elif [[ "$state" == "2" ]]; then
	echo ""
fi

