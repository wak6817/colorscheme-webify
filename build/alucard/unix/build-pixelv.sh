#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/alucard/colorv/interactions.css" \
    "$ROOT/themes/alucard/colorv/other.css" \
    "$ROOT/themes/alucard/colorv/text.css" \
    "$ROOT/themes/alucard/pixelv/fonts.css" \
    "$ROOT/themes/alucard/pixelv/margins.css" \
    "$ROOT/themes/alucard/trans.css" \
    "$ROOT/themes/alucard/api.css" \
    > "$ROOT/build/dist/alucard/pixelv/style.css" # make sure it exists empty

cp "$ROOT/sounds/pixelv/sound.js" "$ROOT/build/dist/alucard/pixelv/"
cp "$ROOT/sounds/pixelv/clickbtn.wav" "$ROOT/build/dist/alucard/pixelv/assets/"