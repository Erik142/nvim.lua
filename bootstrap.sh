#!/usr/bin/env bash

if [ -z "$(which lua-format)" ]; then
  luarocks install --server=https://luarocks.org/dev luaformatter --local
fi

if [ -z "$(which prettier)" ]; then
  npm i -g prettier
fi
