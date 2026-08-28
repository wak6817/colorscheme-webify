#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/src/clatte/colorv/interactions.css" \
    "$ROOT/src/clatte/colorv/other.css" \
    "$ROOT/src/clatte/colorv/text.css" \
    "$ROOT/src/clatte/modernv/fonts.css" \
    "$ROOT/src/clatte/modernv/margins.css" \
    "$ROOT/src/clatte/trans.css" \
    > "$ROOT/build/dist/clatte/modernv/style.css" # make sure it exists empty