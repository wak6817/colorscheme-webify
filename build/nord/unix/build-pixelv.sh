#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/nord/colorv/interactions.css" \
    "$ROOT/themes/nord/colorv/other.css" \
    "$ROOT/themes/nord/colorv/text.css" \
    "$ROOT/themes/nord/pixelv/fonts.css" \
    "$ROOT/themes/nord/pixelv/margins.css" \
    "$ROOT/themes/nord/trans.css" \
    "$ROOT/themes/nord/api.css" \
    > "$ROOT/build/dist/nord/pixelv/style.css" # make sure it exists empty

cp "$ROOT/sounds/pixelv/sound.js" "$ROOT/build/dist/nord/pixelv/"
cp "$ROOT/sounds/pixelv/clickbtn.wav" "$ROOT/build/dist/nord/pixelv/assets/"