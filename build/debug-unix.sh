#!/bin/sh

debug_build() {
    root="$1"
    output="$2"
    enabled="$(sed -n 's/^build-debug[[:space:]]*=[[:space:]]*//p' "$root/config.conf" 2>/dev/null | tr -d '[:space:]')"

    if [ "$enabled" = "true" ]; then
        printf 'root: %s\nbuilding: %s [####################] 100%%\n' "$root" "$output"
    fi
}
