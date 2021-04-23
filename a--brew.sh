#!/usr/bin/env bash
set -e
set -x

# install static languages - start w/ this b/c of confar
brew install stack opam

# make a ~/-src directory that install-from-source can use.
# this isn't really homebrew-related but whatever
mkdir -p ~/-src

# install basic tools
brew install ag tree neovim fzf git wget z vim coreutils fd
brew tap juretta/spy
brew install spy

# install some basic system libraries and such
brew install openssl qt zmq postgres mysql zlib

# eternal terminal
brew install protobuf libsodium
brew link protobuf libsodium
brew install MisterTea/et/et

# install basic C-world development tools and related stuff
brew install cmake doxygen fswatch

# install jvm tooling
brew install maven gradle scala leiningen boot-clj

# install dynamic languages
brew install python nvm

