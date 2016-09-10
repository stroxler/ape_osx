set -x 

# set up brew cask (for installing Apps)
brew install homebrew/completions/brew-cask-completion
brew cask list

# essential underlying libraries
brew install git
brew install wget
brew install cmake
brew install doxygen
brew install python
brew install qt
brew install zmq
brew install openssl

# version control and ci stuff
brew install git
brew install git-cola
brew install jenkins
#brew install homebrew/gui/meld - using diffmerge instead

# data science stuff
brew tab homebrew/science
brew update && brew upgrade
brew install hdf5

# jvm (java, scala, clojure) essentials
brew cask install java # note that the jdk itself requires cask
brew install scala
brew install leiningen
brew install maven
brew install gradle

# databases
brew install postgres

# node.js
brew install node
brew install npm

# google drive api access
brew install gdrive

# get an updated vim (system vim is 7.3 = old)
#  NOTE: neovim is worth considering
brew install vim

# search stuff 
brew install ack
brew install ag
brew install fzf
/usr/local/opt/fzf/install

# optional installs (uncomment to run)

## # sometimes people wrap clojurescript repls in rlwrap
## brew install rlwrap

## # bayes hack stuff: geo
## brew install gdal

## # coffeescript tools (also look at Flask-Cake if you need this)
## npm install -g coffee-script
## brew install cake
