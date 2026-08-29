#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/cmocha/colorv/interactions.css" \
    "$ROOT/themes/cmocha/colorv/other.css" \
    "$ROOT/themes/cmocha/colorv/text.css" \
    "$ROOT/themes/cmocha/pixelv/fonts.css" \
    "$ROOT/themes/cmocha/pixelv/margins.css" \
    "$ROOT/themes/cmocha/trans.css" \
    "$ROOT/themes/cmocha/api.css" \
    > "$ROOT/build/dist/cmocha/pixelv/style.css" # make sure it exists empty

cp "$ROOT/sounds/pixelv/sound.js" "$ROOT/build/dist/cmocha/pixelv/"
cp "$ROOT/sounds/pixelv/clickbtn.wav" "$ROOT/build/dist/cmocha/pixelv/assets/"