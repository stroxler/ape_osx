#!/usr/bin/env bash
set -e
set -x

cd ~
git clone git@github.com:stroxler/config.git
git clone git@github.com:stroxler/confar-v0.git

pushd confar-v0
  stack install
popd

.local/bin/confar-v0 -s ~/config -d ~
