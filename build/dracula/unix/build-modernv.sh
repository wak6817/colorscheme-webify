#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"
echo "root:$ROOT"

cat "$ROOT/src/dracula/colorv/interactions.css" \
    "$ROOT/src/dracula/colorv/other.css" \
    "$ROOT/src/dracula/colorv/text.css" \
    "$ROOT/src/dracula/modernv/fonts.css" \
    "$ROOT/src/dracula/modernv/margins.css" \
    "$ROOT/src/dracula/trans.css" \
    > "$ROOT/build/dist/dracula/modernv/style.css" # make sure it exists empty