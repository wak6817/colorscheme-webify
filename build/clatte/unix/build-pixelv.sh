#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/clatte/colorv/interactions.css" \
    "$ROOT/themes/clatte/colorv/other.css" \
    "$ROOT/themes/clatte/colorv/text.css" \
    "$ROOT/themes/clatte/pixelv/fonts.css" \
    "$ROOT/themes/clatte/pixelv/margins.css" \
    "$ROOT/themes/clatte/trans.css" \
    "$ROOT/themes/clatte/api.css" \
    > "$ROOT/build/dist/clatte/pixelv/style.css" # make sure it exists empty

cp "$ROOT/sounds/pixelv/sound.js" "$ROOT/build/dist/clatte/pixelv/"
cp "$ROOT/sounds/pixelv/clickbtn.wav" "$ROOT/build/dist/clatte/pixelv/assets/"