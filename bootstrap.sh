#! /usr/bin/env bash

git submodule update --init --recursive

rm -rf build*
meson setup build

cd build
meson --reconfigure -Dprefix=/usr
ninja -j4