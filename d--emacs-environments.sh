#!/usr/bin/env bash
set -e
set -x

# install chemacs2 (virtualenv for emacs)
git clone https://github.com/plexus/chemacs2.git ~/chemacs2-emacs.d

# install spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/spacemacs-emacs.d


# doom-emacs install. Note: I'm not actually sure where straight
# puts the packages installed here! But it does seem to work.
git clone https://github.com/hlissner/doom-emacs ~/doom-emacs.d
echo "Installing doom packages. This will take a while."
yes | ~/doom-emacs.d/bin/doom install
# not really needed, but remember this has to be run when we
# change dependencies in our doom config!
yes | ~/doom-emacs.d/bin/doom sync


# Notes
# - my chemacs2 configuration is in dotconfar
# - my runemacs-emacs.d config is also in dotconfar

# Make sure there's no legacy emacs config, and symlink chemacs2
# to be my emacs config.
rm -f ~/.emacs
rm -rf ~/.emacs.d
rm -rf ~/.config/emacs
ln -s ~/chemacs2-emacs.d ~/.config/emacs
