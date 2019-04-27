#!/bin/bash

ROOT=$(cd "$(dirname "$0")" && pwd)

rm -rf build
git init build
find "$ROOT" -name "*.patch" -type f | sort | xargs git -C "$ROOT/build" am 
