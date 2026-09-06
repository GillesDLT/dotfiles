#!/bin/bash

# Paramètres
LOW_BATTERY_LEVEL=20
CHECK_INTERVAL=90  # en secondes

# Boucle infinie
while true; do
    # Obtenir la capacité (pour les batteries modernes)
    battery_level=$(cat /sys/class/power_supply/BAT1/capacity)
    status=$(cat /sys/class/power_supply/BAT1/status)

    if [[ "$battery_level" -le "$LOW_BATTERY_LEVEL" && "$status" == "Discharging" ]]; then
        notify-send -u critical "⚠️ Batterie faible" "Il ne reste que ${battery_level}% de batterie !"
    fi

    sleep "$CHECK_INTERVAL"
done
