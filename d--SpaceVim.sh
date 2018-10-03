#!/usr/bin/env bash
set -e
set -x

has_backup=no
if [[ -d ~/.vim ]]; then
  mv ~/.vim ~/.vim.bak
  has_backup=yes
fi

curl -sLf https://spacevim.org/install.sh | bash
mv ~/.vim ~/SpaceVim-rtp

ln -s ~/Spacevim.d ~/.Spacevim.d

if [[ "$has_backup" == "yes" ]]; then
  mv ~/.vim.bak ~/.vim
fi

