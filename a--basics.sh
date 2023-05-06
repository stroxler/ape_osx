# Grab starship; this is in nix but I like to use an independent install
curl -sS https://starship.rs/install.sh | sh

# Bootstrap nix
sh <(curl -L https://nixos.org/nix/install) --daemon

# Install nix packages to my global profile (NOTE: currently much is duplicated
# with brew! Need to clean up)
nix-env -iA \
  nixpkgs.eternal-terminal \
  nixpkgs.mosh \
  nixpkgs.stack \
  nixpkgs.neovim \
  nixpkgs.opam \
  nixpkgs.rustup \
  nixpkgs.cmake \
  nixpkgs.tree \
  nixpkgs.ripgrep \
  nixpkgs.fish
