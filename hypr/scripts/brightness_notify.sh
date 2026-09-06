#!/bin/bash
pkill rofi 2>/dev/null

# Change brightness
if [[ "$1" == "up" ]]; then
    brightnessctl set 5%+
elif [[ "$1" == "down" ]]; then
    brightnessctl set 2%-
fi

# Get current brightness %
brightness_raw=$(brightnessctl get)
brightness_max=$(brightnessctl max)
brightness=$(( 100 * brightness_raw / brightness_max ))

# Build brightness bar (20 characters)
bar_length=20
filled_length=$(( brightness * bar_length / 100 ))
empty_length=$(( bar_length - filled_length ))
bar=$(printf "%0.s▮" $(seq 1 $filled_length))
bar+=$(printf "%0.s " $(seq 1 $empty_length))

# Optional: Add brightness percentage
msg="Brightness: $brightness%"

# Show notification via dunst
dunstify -r 5555 -u low "$msg" -h int:value:"$brightness"
