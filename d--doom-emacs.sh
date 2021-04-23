#!/usr/bin/env sh
set -ex

git clone https://github.com/hlissner/doom-emacs ~/doom-emacs.d

# assumes you have the shim at stroxler/config/bin/doom-emacs
yes | doom-emacs install
yes | doom-emacs sync
