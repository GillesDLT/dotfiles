#!/bin/bash

# Change volume
if [[ $1 == "up" ]]; then
    wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+
elif [[ $1 == "down" ]]; then
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
fi

# Get current volume as integer
volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf "%.0f", $2 * 100}')
# Build volume bar (20 characters)
bar_length=20
filled_length=$(( volume * bar_length / 100 ))
empty_length=$(( bar_length - filled_length ))

bar=$(printf "%0.s▮" $(seq 1 $filled_length))
bar+=$(printf "%0.s " $(seq 1 $empty_length))

# Optional: Add volume percentage
msg="Volume: $volume%"

# Show notification via dunst
dunstify -r 5555 -u low "$msg" -h int:value:"$volume"
