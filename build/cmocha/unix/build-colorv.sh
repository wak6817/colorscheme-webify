#!/bin/sh

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"

cat "$ROOT/themes/cmocha/colorv/interactions.css" \
    "$ROOT/themes/cmocha/colorv/other.css" \
    "$ROOT/themes/cmocha/colorv/text.css" \
    "$ROOT/themes/cmocha/trans.css" \
    "$ROOT/themes/cmocha/api.css" \
    > "$ROOT/build/dist/cmocha/colorv/style.css" # make sure it exists empty