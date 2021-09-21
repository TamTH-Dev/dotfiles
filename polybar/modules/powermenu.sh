#!/bin/sh

dir="~/.config/polybar/modules/rofi"
uptime=$(uptime -p | sed -e 's/up //g')
rofi_command="rofi -theme $dir/powermenu.rasi"

# Options
shutdown="🎯 Shutdown"
reboot="🎲 Restart"
lock="🔒 Lock"
suspend="😴 Sleep"
logout="🚀 Logout"

# Confirmation
confirm_exit() {
    rofi -dmenu\
        -i\
        -no-fixed-num-lines\
        -p "Are you sure?"\
        -theme $dir/confirm.rasi
}

# Message
msg() {
    rofi -theme "$dir/message.rasi" -e "Available Options  -  yes / y / no / n"
}

# Variable passed to rofi
options="$lock\n$suspend\n$logout\n$reboot\n$shutdown"
chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 0)"
case $chosen in
    $shutdown)
        ans=$(confirm_exit &)
        if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
            i3-msg exit
            systemctl poweroff
        elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
            exit 0
        else
            msg
        fi
        ;;
    $reboot)
        ans=$(confirm_exit &)
        if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
            systemctl reboot
        elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
            exit 0
        else
            msg
        fi
        ;;
    $lock)
        if [[ -f /usr/bin/i3lock ]]; then
            NIGHT='#1a1b26'
            RED='#f7768e'
            ORANGE='#ff9e64'
            BLUE='#2ac3de'

            sleep 0.5 && i3lock \
            --insidever-color=$NIGHT     \
            --ringver-color=$ORANGE      \
            \
            --insidewrong-color=$NIGHT   \
            --ringwrong-color=$RED       \
            \
            --inside-color=$NIGHT        \
            --ring-color=$BLUE           \
            --line-color=$NIGHT          \
            --separator-color=$BLUE      \
            \
            --verif-color=$BLUE          \
            --wrong-color=$BLUE          \
            --time-color=$BLUE           \
            --date-color=$BLUE           \
            --layout-color=$BLUE         \
            --keyhl-color=$ORANGE        \
            --bshl-color=$ORANGE         \
            \
            --screen 1                   \
            --blur 5                     \
            --clock                      \
            --indicator                  \
            --time-str="%H:%M:%S"        \
            --date-str="%A, %m %Y"
        fi
        ;;
    $suspend)
        ans=$(confirm_exit &)
        if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
            # mpc -q pause
            # amixer set Master mute
            systemctl suspend
        elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
            exit 0
        else
            msg
        fi
        ;;
    $logout)
        ans=$(confirm_exit &)
        if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
            if [[ "$DESKTOP_SESSION" == "i3" ]]; then
                i3-msg exit
            elif [[ "$DESKTOP_SESSION" == "Openbox" ]]; then
                openbox --exit
            elif [[ "$DESKTOP_SESSION" == "bspwm" ]]; then
                bspc quit
            fi
        elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
            exit 0
        else
            msg
        fi
        ;;
esac
