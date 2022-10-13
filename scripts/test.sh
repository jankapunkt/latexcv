#!/usr/bin/env bash

SCRIPT_PATH="$(pwd)/scripts/texliveonfly.py"
cd "$1" || exit 1
pwd

# remove main.pdf
[ -f main.pdf ] && rm main.pdf || echo "continue without remove"

# test if main.pdf is removed
[ -f main.pdf ] && exit 1 || echo "continue building pdf output"


# build pdf from source
python3 "$SCRIPT_PATH" main.tex

# exit successfully if pdf present or with error if not present
[ -f main.pdf ] && exit 0 || exit 1
