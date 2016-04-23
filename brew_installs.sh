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

# java essentials
brew cask install java # note that the jdk itself requires cask
brew install scala
brew install leiningen
brew install maven
brew install gradle

# databases
brew install postgres

# coffeescript (plus node, which is probably good for other stuff)
brew install node
npm install -g coffee-script
brew install cake

# bayes hack stuff: geo
brew install gdal
