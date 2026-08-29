#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/src/dracula/colorv/interactions.css" \
    "$ROOT/src/dracula/colorv/other.css" \
    "$ROOT/src/dracula/colorv/text.css" \
    "$ROOT/src/dracula/modernv/fonts.css" \
    "$ROOT/src/dracula/modernv/margins.css" \
    "$ROOT/src/dracula/trans.css" \
    "$ROOT/src/dracula/api.css" \
    "$ROOT/src/templates.css" \
    > "$ROOT/build/dist/dracula/modernv/style.css" # make sure it exists empty

cp "$ROOT/sounds/modernv/sound.js" "$ROOT/build/dist/dracula/modernv/"
cp "$ROOT/sounds/modernv/clickbtn.wav" "$ROOT/build/dist/dracula/modernv/assets/"