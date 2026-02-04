#!/bin/bash
LANDSCAPE_DIR="$HOME/.config/backgrounds/landscape"
PORTRAIT_DIR="$HOME/.config/backgrounds/portrait"

pick_random() {
    find "$1" -xtype f \( -name "*.jpg" -o -name "*.png" \) | shuf -n 1
}

# Parse monitor info from hyprctl
hyprctl monitors -j | jq -r '.[] | "\(.name) \(.width) \(.height) \(.transform)"' | \
while read -r name width height transform; do
    # Transforms 1,3,5,7 are 90°/270° rotations — swap effective dimensions
    if [[ "$transform" =~ ^[1357]$ ]]; then
        tmp=$width; width=$height; height=$tmp
    fi

    if (( width >= height )); then
        wall=$(pick_random "$LANDSCAPE_DIR")
    else
        wall=$(pick_random "$PORTRAIT_DIR")
    fi

    if [[ -n "$wall" ]]; then
        hyprctl hyprpaper wallpaper "$name, $wall, cover"
    else
        echo "No wallpaper found for $name ($(( width >= height ? 'landscape' : 'portrait' )))" >&2
    fi
done
