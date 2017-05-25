#!/bin/bash



# check if spotify is already running
if pgrep -x "spotify" > /dev/null
then
	# if it is, switch focus to it
	wmctrl -ia $(wmctrl -lp | awk -vpid=$(ps ax | grep "/usr/share/spotify/spotify$" | grep -v grep | awk '{print $1}') '$3==pid {print $1; exit}')
else
	# if not, start it
	spotify %U &
fi
