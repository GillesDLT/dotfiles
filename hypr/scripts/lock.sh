#!/bin/bash

# capture l'écran actuel
grim /tmp/screen.png

# floute l'image (nécessite imagemagick)
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen_blur.png

# verrouille l'écran avec swaylock-effects
swaylock -i /tmp/screen_blur.png -f -c 1d1f28
