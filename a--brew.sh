#!/usr/bin/env bash
set -e
set -x

# install basic tools
brew install ag tree neovim fzf git wget z vim
brew tap juretta/spy
brew install spy

# install some basic system libraries and such
brew install openssl qt zmq postgres mysql

# install basic C-world development tools and related stuff
brew install cmake doxygen fswatch

# install jvm tooling
brew cask install java
brew install maven gradle scala leiningen boot-clj

# install dynamic languages
brew install python python2 nvm

# install static languages
brew install stack opam
