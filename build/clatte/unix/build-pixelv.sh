#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/src/clatte/colorv/interactions.css" \
    "$ROOT/src/clatte/colorv/other.css" \
    "$ROOT/src/clatte/colorv/text.css" \
    "$ROOT/src/clatte/pixelv/fonts.css" \
    "$ROOT/src/clatte/pixelv/margins.css" \
    "$ROOT/src/clatte/trans.css" \
    "$ROOT/src/clatte/api.css" \
    > "$ROOT/build/dist/clatte/pixelv/style.css" # make sure it exists empty

cp "$ROOT/sounds/pixelv/sound.js" "$ROOT/build/dist/clatte/pixelv/"
cp "$ROOT/sounds/pixelv/clickbtn.wav" "$ROOT/build/dist/clatte/pixelv/assets/"