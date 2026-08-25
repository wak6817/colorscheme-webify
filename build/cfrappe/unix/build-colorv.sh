#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"
echo "root:$ROOT"

cat "$ROOT/src/cfrappe/colorv/interactions.css" \
    "$ROOT/src/cfrappe/colorv/other.css" \
    "$ROOT/src/cfrappe/colorv/text.css" \
    "$ROOT/src/cfrappe/trans.css" \
    > "$ROOT/build/dist/cfrappe/colorv/style.css" # make sure it exists empty