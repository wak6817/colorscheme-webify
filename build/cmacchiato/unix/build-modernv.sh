#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/cmacchiato/colorv/interactions.css" \
    "$ROOT/themes/cmacchiato/colorv/other.css" \
    "$ROOT/themes/cmacchiato/colorv/text.css" \
    "$ROOT/themes/cmacchiato/modernv/fonts.css" \
    "$ROOT/themes/cmacchiato/modernv/margins.css" \
    "$ROOT/themes/cmacchiato/trans.css" \
    "$ROOT/themes/cmacchiato/api.css" \
    > "$ROOT/build/dist/cmacchiato/modernv/style.css" # make sure it exists empty
cp "$ROOT/sounds/modernv/sound.js" "$ROOT/build/dist/cmacchiato/modernv/"
cp "$ROOT/sounds/modernv/clickbtn.wav" "$ROOT/build/dist/cmacchiato/modernv/assets/"