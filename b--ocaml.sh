#!/usr/bin/env bash
set -e
set -x

opam init
$(opam env)
opam install -y dune merlin utop ocp-indent
