#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/cmacchiato/colorv/interactions.css" \
    "$ROOT/themes/cmacchiato/colorv/other.css" \
    "$ROOT/themes/cmacchiato/colorv/text.css" \
    "$ROOT/themes/cmacchiato/pixelv/fonts.css" \
    "$ROOT/themes/cmacchiato/pixelv/margins.css" \
    "$ROOT/themes/cmacchiato/trans.css" \
    "$ROOT/themes/cmacchiato/api.css" \
    > "$ROOT/build/dist/cmacchiato/pixelv/style.css" # make sure it exists empty

cp "$ROOT/sounds/pixelv/sound.js" "$ROOT/build/dist/cmacchiato/pixelv/"
cp "$ROOT/sounds/pixelv/clickbtn.wav" "$ROOT/build/dist/cmacchiato/pixelv/assets/"