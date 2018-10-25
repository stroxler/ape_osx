# Install rustup / rustc / cargo
#
# I'm not 100% sure the differences between all of these,
# but between them they give you something kind of like
# stack, where you can manage different rust versions and
# also the package dependencies of various projects
curl https://sh.rustup.rs -sSf | sh

# get the standard library as source code (needed for racer)
rustup component add rust-src

# add formatting
rustup component add rustfmt-preveiw

# add a more powerful linter
rustup component add clippy-preview

# add rust language server
rustup component add rls-preview

# and rust code analysis
rustup component add rust-analysis

# install racer for autocomplete
rustup toolchain add nightly
cargo +nightly install racer
cargo +nightly install rustsym
