#!/usr/bin/env bash
set -e
set -x

# basic ui stuff
brew install --cask clipy
brew install --cask spectacle
brew install --cask flux

# browsers
set +e  # in case browsers are preinstalled
brew install --cask google-chrome
brew install --cask firefox
set -e

# editors
brew install --cask visual-studio-code
brew install --cask emacs
brew install --cask kitty   # terminal emulator: use for vim

# basic development tools
brew install --cask docker

# iterm, and a couple of color themes
#   (With this you have solarized light/dark, nord, gruvbox, sulpherpool)
brew install --cask iterm2
mkdir -p ~/iterm2-colors
curl https://raw.githubusercontent.com/arcticicestudio/nord-iterm2/develop/src/xml/Nord.itermcolors > ~/iterm2-colors/Nord.itermcolors
curl https://raw.githubusercontent.com/morhetz/gruvbox-contrib/master/iterm2/gruvbox-dark.itermcolors > ~/iterm2-colors/Gruvbox.itermcolors
curl https://raw.githubusercontent.com/chriskempson/base16-iterm2/master/base16-ateliersulphurpool.dark.itermcolors > ~/iterm2-colors/B16-sulpherpool.itermcolors
# ide and git gui devtools
## brew install --cask intellij-idea-ce
brew install --cask sourcetree

# music stuff
brew install --cask lilypond simplesynth frescobaldi

# hot-reloading pdf viewer (good for latex, music, pandoc, etc)
brew install --cask skim

# some logic tools
brew install --cask alloy
