#!/bin/sh

# Require i3lock-color

NIGHT='#1a1b26'
RED='#f7768e'
ORANGE='#ff9e64'
BLUE='#2ac3de'

if [[ -f /usr/bin/i3lock ]]; then
    i3lock \
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
