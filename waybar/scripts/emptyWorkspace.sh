#!/bin/bash

# Récupérer la fenêtre active
title=$(hyprctl activewindow -j 2>/dev/null | jq -r '.title // empty')

# Récupérer l’ID du workspace actif
workspace=$(hyprctl activeworkspace -j 2>/dev/null | jq -r '.id // -1')

if [[ -z "$title" ]]; then
  # Pas de fenêtre active
  if (( workspace % 2 == 0 )); then
    echo "404: Window Not Found"
  else
    echo "¯\\_(ツ)_/¯"
  fi
fi
