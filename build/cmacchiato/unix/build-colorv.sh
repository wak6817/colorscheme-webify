#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/cmacchiato/colorv/interactions.css" \
    "$ROOT/themes/cmacchiato/colorv/other.css" \
    "$ROOT/themes/cmacchiato/colorv/text.css" \
    "$ROOT/themes/cmacchiato/trans.css" \
    "$ROOT/themes/cmacchiato/api.css" \
    > "$ROOT/build/dist/cmacchiato/colorv/style.css" # make sure it exists empty