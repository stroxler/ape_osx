# this is the recommended way to install spacemacs. It takes a while
brew tap d12frosted/emacs-plus
brew install emacs-plus --with-cocoa --with-gnutls --with-librsvg --with-imagemagick --with-spacemacs-icon
# the linkapps makes the emacs app link to /Applications (not ~/Applications!)
brew linkapps emacs-plus
# this installs spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
