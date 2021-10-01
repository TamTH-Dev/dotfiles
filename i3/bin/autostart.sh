#!/bin/bash

# Kill already running process
_ps=(picom)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done

# Set wallpapper
feh --bg-scale ~/Pictures/wallpapers/tokyonight.jpg

# Lauch polybar
~/.config/i3/bin/bar.sh

# Lauch compositor
~/.config/i3/bin/comp.sh
