#!/bin/sh

cat <<EOF | pmenu | sh &
Browser		firefox-bin
xterm		terminator
urxvt		urxvt
files		thunar
lock		i3lock
exit		i3-msg exit
EOF
