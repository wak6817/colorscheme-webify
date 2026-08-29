#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/dracula/colorv/interactions.css" \
    "$ROOT/themes/dracula/colorv/other.css" \
    "$ROOT/themes/dracula/colorv/text.css" \
    "$ROOT/themes/dracula/modernv/fonts.css" \
    "$ROOT/themes/dracula/modernv/margins.css" \
    "$ROOT/themes/dracula/trans.css" \
    "$ROOT/themes/dracula/api.css" \
    > "$ROOT/build/dist/dracula/modernv/style.css" # make sure it exists empty
cp "$ROOT/sounds/modernv/sound.js" "$ROOT/build/dist/dracula/modernv/"
cp "$ROOT/sounds/modernv/clickbtn.wav" "$ROOT/build/dist/dracula/modernv/assets/"