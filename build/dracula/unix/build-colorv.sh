#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/dracula/colorv/interactions.css" \
    "$ROOT/themes/dracula/colorv/other.css" \
    "$ROOT/themes/dracula/colorv/text.css" \
    "$ROOT/themes/dracula/trans.css" \
    "$ROOT/themes/dracula/api.css" \
    > "$ROOT/build/dist/dracula/colorv/style.css" # make sure it exists empty