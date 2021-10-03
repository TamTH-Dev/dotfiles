#!/bin/bash

sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

# Source xprofile
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

# Merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

# Source resource
if [ -f "$userresources" ]; then
	xrdb -merge "$userresources"
fi

# Source modmap
if [ -f "$usermodmap" ]; then
	xmodmap "$usermodmap"
fi

# Load all modules in init.d
if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
fi

# Enable NumLock key on startup
numlockx &

# Start window manager
exec i3
