#!/usr/bin/env bash
set -e
set -x

# install chemacs2 (virtualenv for emacs)
git clone https://github.com/plexus/chemacs2.git ~/chemacs2-emacs.d

# install spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/spacemacs-emacs.d


# Set chemacs as the cannonical emacs, via a symlink.
#  Why use a symlink? Because it's convenient to be able to
#  remove .emacs.d when bootstrapping some alternative emacs setup,
#  since the install instructions usually expect to install there
#  and it lets us take chemacs2 out of the loop if there's an issue.
ln -s ~/chemacs2-emacs.d ~/.config/emacs

# make sure there's no legacy emacs
rm -rf ~/.emacs.d


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

