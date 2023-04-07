#!/bin/sh

#Define the battery
Battery() {
        BATPERC=$(acpi --battery | cut -d, -f2)
        echo "$BATPERC"
}
batt_stat() {
	stat=$(acpi --battery | awk '{print substr($3,1,4)}')
	echo "$stat"
}
# Print the percentage
        echo "$(batt_stat)$(Battery)"
