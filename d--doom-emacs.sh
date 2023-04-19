#!/usr/bin/env sh
set -ex

git clone https://github.com/hlissner/doom-emacs ~/doom-emacs.d

# assumes you have the shim at stroxler/config/bin/demacs/script
yes | ~/doom-emacs.d/bin/doom install
yes | ~/doom-emacs.d/bin/doom sync
