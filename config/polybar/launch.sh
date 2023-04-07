#!/usr/bin/bash
#kill all polybar instance
kill polybar

#wait to kill them all
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#launch polybar
polybar -c ~/.config/polybar/config.ini example -r &
