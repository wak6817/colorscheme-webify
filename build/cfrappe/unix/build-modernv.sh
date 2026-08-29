#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/cfrappe/colorv/interactions.css" \
    "$ROOT/themes/cfrappe/colorv/other.css" \
    "$ROOT/themes/cfrappe/colorv/text.css" \
    "$ROOT/themes/cfrappe/modernv/fonts.css" \
    "$ROOT/themes/cfrappe/modernv/margins.css" \
    "$ROOT/themes/cfrappe/trans.css" \
    "$ROOT/themes/cfrappe/api.css" \
    > "$ROOT/build/dist/cfrappe/modernv/style.css" # make sure it exists empty
cp "$ROOT/sounds/modernv/sound.js" "$ROOT/build/dist/cfrappe/modernv/"
cp "$ROOT/sounds/modernv/clickbtn.wav" "$ROOT/build/dist/cfrappe/modernv/assets/"