#!/bin/bash
set -euo pipefail

# GUI applications may not inherit the terminal's TeX PATH.
if ! command -v latexmk >/dev/null 2>&1; then
    for tex_bin in "$HOME/Library/TinyTeX/bin/universal-darwin" /Library/TeX/texbin; do
        if [ -x "$tex_bin/latexmk" ]; then
            export PATH="$tex_bin:$PATH"
            break
        fi
    done
fi

if ! command -v latexmk >/dev/null 2>&1; then
    printf '%s\n' 'latexmk not found. Install TinyTeX or MacTeX, then retry.' >&2
    exit 127
fi

cd "$(dirname "${BASH_SOURCE[0]}")/.."
exec latexmk "$@"
