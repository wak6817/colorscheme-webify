#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/src/nord/colorv/interactions.css" \
    "$ROOT/src/nord/colorv/other.css" \
    "$ROOT/src/nord/colorv/text.css" \
    "$ROOT/src/nord/modernv/fonts.css" \
    "$ROOT/src/nord/modernv/margins.css" \
    "$ROOT/src/nord/trans.css" \
    > "$ROOT/build/dist/nord/modernv/style.css" # make sure it exists empty