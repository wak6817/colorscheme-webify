#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/clatte/colorv/interactions.css" \
    "$ROOT/themes/clatte/colorv/other.css" \
    "$ROOT/themes/clatte/colorv/text.css" \
    "$ROOT/themes/clatte/trans.css" \
    "$ROOT/themes/clatte/api.css" \
    > "$ROOT/build/dist/clatte/colorv/style.css" # make sure it exists empty