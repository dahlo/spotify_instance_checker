#!/bin/bash

# check if (not) can get focus on spotify
if ! wmctrl -ia $(wmctrl -lp | awk -vpid=$(ps ax | grep '/usr/share/spotify/spotify$' | grep -v grep | awk '{print $1}') '$3==pid {print $1; exit}') > /dev/null 2>&1
then
	# if not, start it
	/usr/share/spotify/spotify &
fi
