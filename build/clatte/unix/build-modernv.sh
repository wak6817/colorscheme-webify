#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/clatte/colorv/interactions.css" \
    "$ROOT/themes/clatte/colorv/other.css" \
    "$ROOT/themes/clatte/colorv/text.css" \
    "$ROOT/themes/clatte/modernv/fonts.css" \
    "$ROOT/themes/clatte/modernv/margins.css" \
    "$ROOT/themes/clatte/trans.css" \
    > "$ROOT/build/dist/clatte/modernv/style.css" # make sure it exists empty
cp "$ROOT/sounds/modernv/sound.js" "$ROOT/build/dist/clatte/modernv/"
cp "$ROOT/sounds/modernv/clickbtn.wav" "$ROOT/build/dist/clatte/modernv/assets/"