#!/usr/bin/env bash
set -e
set -x

# basic ui stuff
brew cask install clipy
brew cask install spectacle
brew cask install flux

# browsers
brew cask install google-chrome
brew cask install firefox

# editors
brew cask install visual-studio-code
brew cask install emacs
brew cask install kitty   # terminal emulator: use for vim

# basic development tools
brew cask install docker

# iterm, and a couple of color themes
#   (With this you have solarized light/dark, nord, gruvbox, sulpherpool)
brew cask install iterm2
mkdir ~/iterm2-colors
curl https://raw.githubusercontent.com/arcticicestudio/nord-iterm2/develop/src/xml/Nord.itermcolors > ~/iterm2-colors/Nord.itermcolors
curl https://raw.githubusercontent.com/morhetz/gruvbox-contrib/master/iterm2/gruvbox-dark.itermcolors > ~/iterm2-colors/Gruvbox.itermcolors
curl https://raw.githubusercontent.com/chriskempson/base16-iterm2/master/base16-ateliersulphurpool.dark.itermcolors > ~/iterm2-colors/B16-sulpherpool.itermcolors
# ide and git gui devtools
brew cask install intellij-idea-ce
brew cask install sourcetree

# music stuff
brew cask install lilypond simplesynth
