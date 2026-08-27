#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"
. "$ROOT/build/debug-unix.sh"
debug_build "$ROOT" "$ROOT/build/dist/clatte/colorv/style.css"

cat "$ROOT/src/clatte/colorv/interactions.css" \
    "$ROOT/src/clatte/colorv/other.css" \
    "$ROOT/src/clatte/colorv/text.css" \
    "$ROOT/src/clatte/trans.css" \
    > "$ROOT/build/dist/clatte/colorv/style.css" # make sure it exists empty