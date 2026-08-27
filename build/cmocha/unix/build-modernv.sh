#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"
. "$ROOT/build/debug-unix.sh"
debug_build "$ROOT" "$ROOT/build/dist/cmocha/modernv/style.css"

cat "$ROOT/src/cmocha/colorv/interactions.css" \
    "$ROOT/src/cmocha/colorv/other.css" \
    "$ROOT/src/cmocha/colorv/text.css" \
    "$ROOT/src/cmocha/modernv/fonts.css" \
    "$ROOT/src/cmocha/modernv/margins.css" \
    "$ROOT/src/cmocha/trans.css" \
    > "$ROOT/build/dist/cmocha/modernv/style.css" # make sure it exists empty