#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"
. "$ROOT/build/debug-unix.sh"
debug_build "$ROOT" "$ROOT/build/dist/cmacchiato/modernv/style.css"

cat "$ROOT/src/cmacchiato/colorv/interactions.css" \
    "$ROOT/src/cmacchiato/colorv/other.css" \
    "$ROOT/src/cmacchiato/colorv/text.css" \
    "$ROOT/src/cmacchiato/modernv/fonts.css" \
    "$ROOT/src/cmacchiato/modernv/margins.css" \
    "$ROOT/src/cmacchiato/trans.css" \
    > "$ROOT/build/dist/cmacchiato/modernv/style.css" # make sure it exists empty