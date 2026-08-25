#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"
echo "root:$ROOT"

cat "$ROOT/src/nord/colorv/interactions.css" \
    "$ROOT/src/nord/colorv/other.css" \
    "$ROOT/src/nord/colorv/text.css" \
    "$ROOT/src/nord/trans.css" \
    > "$ROOT/build/dist/nord/colorv/style.css" # make sure it exists empty