#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/dracula/colorv/interactions.css" \
    "$ROOT/themes/dracula/colorv/other.css" \
    "$ROOT/themes/dracula/colorv/text.css" \
    "$ROOT/themes/dracula/pixelv/fonts.css" \
    "$ROOT/themes/dracula/pixelv/margins.css" \
    "$ROOT/themes/dracula/trans.css" \
    "$ROOT/themes/dracula/api.css" \
    > "$ROOT/build/dist/dracula/pixelv/style.css" # make sure it exists empty

cp "$ROOT/sounds/pixelv/sound.js" "$ROOT/build/dist/dracula/pixelv/"
cp "$ROOT/sounds/pixelv/clickbtn.wav" "$ROOT/build/dist/dracula/pixelv/assets/"