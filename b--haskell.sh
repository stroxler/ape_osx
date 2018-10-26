#!/usr/bin/env bash
set -e
set -x

stack install cabal-install

cd ~/-src
git clone https://github.com/haskell/haskell-ide-engine --recursive
cd haskell-ide-engine
stack install

