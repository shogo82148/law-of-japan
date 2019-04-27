#!/bin/bash

ROOT=$(cd "$(dirname "$0")" && pwd)

rm -rf build
git init build
git -C "$ROOT/build" am "$ROOT"/*.patch
