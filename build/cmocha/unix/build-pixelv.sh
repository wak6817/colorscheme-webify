#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/src/cmocha/colorv/interactions.css" \
    "$ROOT/src/cmocha/colorv/other.css" \
    "$ROOT/src/cmocha/colorv/text.css" \
    "$ROOT/src/cmocha/pixelv/fonts.css" \
    "$ROOT/src/cmocha/pixelv/margins.css" \
    "$ROOT/src/cmocha/trans.css" \
    "$ROOT/src/cmocha/api.css" \
    "$ROOT/src/templates.css" \
    > "$ROOT/build/dist/cmocha/pixelv/style.css" # make sure it exists empty

cp "$ROOT/sounds/pixelv/sound.js" "$ROOT/build/dist/cmocha/pixelv/"
cp "$ROOT/sounds/pixelv/clickbtn.wav" "$ROOT/build/dist/cmocha/pixelv/assets/"