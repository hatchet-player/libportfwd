#! /usr/bin/env bash

git submodule update --init --recursive

rm -rf build*
meson setup build-gcc

cd build-gcc
meson --reconfigure
ninja -j4