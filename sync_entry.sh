#!/usr/bin/env bash
set -e
TAG="bright-anchor-golden-anchor"
LIB="buffed-tweed.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/corinvewave/solarmodulelab/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
