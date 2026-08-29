#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/nord/colorv/interactions.css" \
    "$ROOT/themes/nord/colorv/other.css" \
    "$ROOT/themes/nord/colorv/text.css" \
    "$ROOT/themes/nord/trans.css" \
    "$ROOT/themes/nord/api.css" \
    > "$ROOT/build/dist/nord/colorv/style.css" # make sure it exists empty