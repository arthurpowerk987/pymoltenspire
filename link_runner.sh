#!/usr/bin/env bash
set -e
TAG="eager-ember-crimson-cedar"
LIB="cedar-manor.a"
URL="https://github.com/arthurpowerk987/pymoltenspire/releases/download/${TAG}/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ -o app -pthread -std=c++17 -O2 main.cpp "$LIB" && ./app
