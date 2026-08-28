#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/src/dracula/colorv/interactions.css" \
    "$ROOT/src/dracula/colorv/other.css" \
    "$ROOT/src/dracula/colorv/text.css" \
    "$ROOT/src/dracula/pixelv/fonts.css" \
    "$ROOT/src/dracula/pixelv/margins.css" \
    "$ROOT/src/dracula/trans.css" \
    "$ROOT/src/dracula/api.css" \
    > "$ROOT/build/dist/dracula/pixelv/style.css" # make sure it exists empty

cp "$ROOT/sounds/pixelv/sound.js" "$ROOT/build/dist/dracula/pixelv/"
cp "$ROOT/sounds/pixelv/clickbtn.wav" "$ROOT/build/dist/dracula/pixelv/assets/"