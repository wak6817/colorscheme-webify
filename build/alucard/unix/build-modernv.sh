#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/alucard/colorv/interactions.css" \
    "$ROOT/themes/alucard/colorv/other.css" \
    "$ROOT/themes/alucard/colorv/text.css" \
    "$ROOT/themes/alucard/modernv/fonts.css" \
    "$ROOT/themes/alucard/modernv/margins.css" \
    "$ROOT/themes/alucard/trans.css" \
    "$ROOT/themes/alucard/api.css" \
    > "$ROOT/build/dist/alucard/modernv/style.css" # make sure it exists empty
cp "$ROOT/sounds/modernv/sound.js" "$ROOT/build/dist/alucard/modernv/"
cp "$ROOT/sounds/modernv/clickbtn.wav" "$ROOT/build/dist/alucard/modernv/assets/"