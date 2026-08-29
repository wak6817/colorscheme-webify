#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/cfrappe/colorv/interactions.css" \
    "$ROOT/themes/cfrappe/colorv/other.css" \
    "$ROOT/themes/cfrappe/colorv/text.css" \
    "$ROOT/themes/cfrappe/pixelv/fonts.css" \
    "$ROOT/themes/cfrappe/pixelv/margins.css" \
    "$ROOT/themes/cfrappe/trans.css" \
    "$ROOT/themes/cfrappe/api.css" \
    > "$ROOT/build/dist/cfrappe/pixelv/style.css" # make sure it exists empty

cp "$ROOT/sounds/pixelv/sound.js" "$ROOT/build/dist/cfrappe/pixelv/"
cp "$ROOT/sounds/pixelv/clickbtn.wav" "$ROOT/build/dist/cfrappe/pixelv/assets/"