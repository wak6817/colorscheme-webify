#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/alucard/colorv/interactions.css" \
    "$ROOT/themes/alucard/colorv/other.css" \
    "$ROOT/themes/alucard/colorv/text.css" \
    "$ROOT/themes/alucard/trans.css" \
    "$ROOT/themes/alucard/api.css" \
    > "$ROOT/build/dist/alucard/colorv/style.css" # make sure it exists empty