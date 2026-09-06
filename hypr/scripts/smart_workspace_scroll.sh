#!/bin/bash

# Direction: +1 for scroll up, -1 for scroll down
DIRECTION=$1

# Get current workspace ID
CURRENT_WS=$(hyprctl activeworkspace -j | jq '.id')

# Calculate new workspace
NEW_WS=$((CURRENT_WS + DIRECTION))

# Safety: minimum workspace number is 1
if [ "$NEW_WS" -lt 1 ]; then
  NEW_WS=1
fi

# Switch to (and create if needed) the new workspace
hyprctl dispatch workspace "$NEW_WS"
