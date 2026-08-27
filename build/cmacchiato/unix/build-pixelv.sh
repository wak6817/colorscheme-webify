#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"
. "$ROOT/build/debug-unix.sh"
debug_build "$ROOT" "$ROOT/build/dist/cmacchiato/pixelv/style.css"

cat "$ROOT/src/cmacchiato/colorv/interactions.css" \
    "$ROOT/src/cmacchiato/colorv/other.css" \
    "$ROOT/src/cmacchiato/colorv/text.css" \
    "$ROOT/src/cmacchiato/pixelv/fonts.css" \
    "$ROOT/src/cmacchiato/pixelv/margins.css" \
    "$ROOT/src/cmacchiato/trans.css" \
    > "$ROOT/build/dist/cmacchiato/pixelv/style.css" # make sure it exists empty

cp "$ROOT/sounds/pixelv/sound.js" "$ROOT/build/dist/cmacchiato/pixelv/"
cp "$ROOT/sounds/pixelv/clickbtn.wav" "$ROOT/build/dist/cmacchiato/pixelv/assets/"