#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/src/nord/colorv/interactions.css" \
    "$ROOT/src/nord/colorv/other.css" \
    "$ROOT/src/nord/colorv/text.css" \
    "$ROOT/src/nord/modernv/fonts.css" \
    "$ROOT/src/nord/modernv/margins.css" \
    "$ROOT/src/nord/trans.css" \
    "$ROOT/src/nord/api.css" \
    "$ROOT/src/templates.css" \
    > "$ROOT/build/dist/nord/modernv/style.css" # make sure it exists empty

cp "$ROOT/sounds/modernv/sound.js" "$ROOT/build/dist/nord/modernv/"
cp "$ROOT/sounds/modernv/clickbtn.wav" "$ROOT/build/dist/nord/modernv/assets/"