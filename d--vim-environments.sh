# At this stage I'm not really in a good place to explore
# different neovim setups. A few notes on what I've learned
# though...
#
# Environment switching:
# - cheovim isn't useful, but an upcoming neovim release will
#   support NVIM_APPNAME
# - in the meantime, if I want env switching the best approach
#   would be global: a script that swaps out both the
#   `.local/share/nvim` and `.config/nvim` directories.
#
# Packaging:
# - It looks like lazy.vim is the way to go for packaging,
#   and maybe (I'm less certain of this) mason for external
#   dependencies.
#
# Starter kits / frameworks (all of these use lazy.vim)
# - nvchaad is the #1 right now, it's a good bet
# - lazyvim is from the lazy.vim author, it's my #2 option
# - astrovim may also be solid (it's probably spacemacs-inspired)
# - ... I have mostly ruled out lunarvim, I don't much like it.
#
# Other resources
# - https://github.com/datwaft/nvim.conf is the best pointer
#   I've found so far on how to drive neovim with fennel.


# For now, I want to use this progressive starter kit, in base mode (the
# branches progress from a minimal no-plugin config toward a much more
# complex setup; base is the second-most-bare and has just a few plugins).
#
# See README at https://github.com/VonHeikemen/nvim-starter
git clone https://github.com/VonHeikemen/nvim-starter ~/.config/nvim-starter-nvim
mkdir -p ~/.local/share/nvim-starter-nvim
cd ~/.config/nvim-starter-nvim && git checkout 01-base
cd -


# This is what I mean when I say that I can use a global switch to isolate
# vim environments; I can't (yet) run them concurrently the way chemacs
# allows but I could make it trivial to globally switch using symlinks.
rm -rf ~/.config/nvim ~/.local/share/nvim
ln -s ~/.config/nvim-starter-nvim ~/.config/nvim
ln -s ~/.local/share/nvim-starter-nvim ~/.local/share/nvim
