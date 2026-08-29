#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/nord/colorv/interactions.css" \
    "$ROOT/themes/nord/colorv/other.css" \
    "$ROOT/themes/nord/colorv/text.css" \
    "$ROOT/themes/nord/modernv/fonts.css" \
    "$ROOT/themes/nord/modernv/margins.css" \
    "$ROOT/themes/nord/trans.css" \
    "$ROOT/themes/nord/api.css" \
    > "$ROOT/build/dist/nord/modernv/style.css" # make sure it exists empty
cp "$ROOT/sounds/modernv/sound.js" "$ROOT/build/dist/nord/modernv/"
cp "$ROOT/sounds/modernv/clickbtn.wav" "$ROOT/build/dist/nord/modernv/assets/"