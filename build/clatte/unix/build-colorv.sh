#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"
echo "root:$ROOT"

cat "$ROOT/src/clatte/colorv/interactions.css" \
    "$ROOT/src/clatte/colorv/other.css" \
    "$ROOT/src/clatte/colorv/text.css" \
    "$ROOT/src/clatte/trans.css" \
    > "$ROOT/build/dist/clatte/colorv/style.css" # make sure it exists empty