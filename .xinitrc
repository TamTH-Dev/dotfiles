#!/bin/bash

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

if [ -f "$userresources" ]; then
	xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
	xmodmap "$usermodmap"
fi

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
fi

# Start window manager
exec i3

# Launch ibus
exec ibus-daemon &
