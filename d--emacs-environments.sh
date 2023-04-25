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
ln -s ~/chemacs2-emacs.d ~/.emacs.d

# Note: my chemacs2 configuration is in dotconfar

