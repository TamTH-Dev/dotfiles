#!/usr/bin/env bash

## Files and Directories
DIR="$HOME/.config/polybar"

## Launch Polybar with selected style
launch_bar() {
	if [[ ! `pidof polybar` ]]; then
		polybar -q main -c "$DIR"/config &
	else
		polybar-msg cmd restart
	fi
}

launch_bar
