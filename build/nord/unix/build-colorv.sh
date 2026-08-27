#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"
. "$ROOT/build/debug-unix.sh"
debug_build "$ROOT" "$ROOT/build/dist/nord/colorv/style.css"

cat "$ROOT/src/nord/colorv/interactions.css" \
    "$ROOT/src/nord/colorv/other.css" \
    "$ROOT/src/nord/colorv/text.css" \
    "$ROOT/src/nord/trans.css" \
    > "$ROOT/build/dist/nord/colorv/style.css" # make sure it exists empty