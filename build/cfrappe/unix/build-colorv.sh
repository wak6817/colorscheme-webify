#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/cfrappe/colorv/interactions.css" \
    "$ROOT/themes/cfrappe/colorv/other.css" \
    "$ROOT/themes/cfrappe/colorv/text.css" \
    "$ROOT/themes/cfrappe/trans.css" \
    "$ROOT/themes/cfrappe/api.css" \
    > "$ROOT/build/dist/cfrappe/colorv/style.css" # make sure it exists empty