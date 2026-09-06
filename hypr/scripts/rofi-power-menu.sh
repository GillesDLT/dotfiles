#!/bin/bash

# Show the power menu with custom theme
chosen=$(echo -e " Shutdown\n Reboot\n Suspend\n Lock" | rofi -dmenu -i -p "Power Menu" -theme ~/.config/rofi/shutdown.rasi)

case "$chosen" in
    " Shutdown") systemctl poweroff ;;
    " Reboot") systemctl reboot ;;
    " Suspend") systemctl suspend ;;
    " Lock") ~/.config/hypr/scripts/lock.sh ;;
esac
