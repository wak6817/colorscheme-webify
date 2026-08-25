#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
echo "root:$ROOT"

cat "$ROOT/src/cmocha/colorv/interactions.css" \
    "$ROOT/src/cmocha/colorv/other.css" \
    "$ROOT/src/cmocha/colorv/text.css" \
    "$ROOT/src/cmocha/pixelv/fonts.css" \
    "$ROOT/src/cmocha/pixelv/margins.css" \
    "$ROOT/src/cmocha/trans.css" \
    | lua "$ROOT/build/add-important.lua" \
    > "$ROOT/build/dist/cmocha/pixelv/style.css" # make sure it exists empty

cp "$ROOT/sounds/cmocha/sound.js" "$ROOT/build/dist/cmocha/pixelv/"
cp "$ROOT/sounds/cmocha/clickbtn.wav" "$ROOT/build/dist/cmocha/pixelv/assets/"