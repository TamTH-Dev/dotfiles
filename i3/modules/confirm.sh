#!/bin/sh

dir="~/.config/polybar/modules/rofi"

# Message
msg() {
    rofi -theme "$dir/message.rasi" -e "Available Options  -  yes / y / no / n"
}

confirm_exit() {
    rofi -dmenu\
        -i\
        -no-fixed-num-lines\
        -p "Are you sure?"\
        -theme $dir/confirm.rasi
}

ans=$(confirm_exit &)
if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
    i3-msg exit
elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
    exit 0
else
    msg
fi
