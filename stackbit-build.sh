#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
hugo

./inject-stackbit-widget.js public https://localhost:8092/init.js 601b11a76f2378e6a5595ff6

echo "stackbit-build.sh: finished build"
