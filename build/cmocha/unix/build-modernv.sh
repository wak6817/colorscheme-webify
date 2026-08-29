#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/cmocha/colorv/interactions.css" \
    "$ROOT/themes/cmocha/colorv/other.css" \
    "$ROOT/themes/cmocha/colorv/text.css" \
    "$ROOT/themes/cmocha/modernv/fonts.css" \
    "$ROOT/themes/cmocha/modernv/margins.css" \
    "$ROOT/themes/cmocha/trans.css" \
    "$ROOT/themes/cmocha/api.css" \
    > "$ROOT/build/dist/cmocha/modernv/style.css" # make sure it exists empty
cp "$ROOT/sounds/modernv/sound.js" "$ROOT/build/dist/cmocha/modernv/"
cp "$ROOT/sounds/modernv/clickbtn.wav" "$ROOT/build/dist/cmocha/modernv/assets/"