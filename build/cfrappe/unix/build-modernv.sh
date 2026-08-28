#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/src/cfrappe/colorv/interactions.css" \
    "$ROOT/src/cfrappe/colorv/other.css" \
    "$ROOT/src/cfrappe/colorv/text.css" \
    "$ROOT/src/cfrappe/modernv/fonts.css" \
    "$ROOT/src/cfrappe/modernv/margins.css" \
    "$ROOT/src/cfrappe/trans.css" \
    "$ROOT/src/cfrappe/api.css" \
    > "$ROOT/build/dist/cfrappe/modernv/style.css" # make sure it exists empty