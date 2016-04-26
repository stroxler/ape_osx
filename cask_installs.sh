set -x

# tools to make the UI nicer
brew cask install spectacle
brew cask install clipmenu

# foundational stuff (except java)
brew cask install xquartz
brew cask install iterm2

# misc
brew cask install macvim
brew cask install slack
brew tap caskroom/versions
brew cask install intellij-idea-ce

# Git tool
#    Notes: git-cola is the git gui, start it from cli
#           diffmerge is like meld. Also starts from cli
brew cask install diffmerge

# R gui
brew tap homebrew/science
brew cask install r
brew cask install rstudio

# pgadmin (postgres gui)
brew cask install pgadmin3

# vpn client
brew cask install viscosity
