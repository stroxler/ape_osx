# Setup scripts for OSX (started April 2016)

These scripts set up a basic dev environment on OSX
(R + Rstudio, basic pydata stack, clojure / java / scala).

First you need to install homebrew (google for the most
up-to-date instructions), then you want to run
```
./brew_installs.sh
./cask_installs.sh
./R_installs.sh
./pip_installs.sh
```

The scripts are not heavily tested so you may run into
an error or two. They all have `set -x` set, so if you do
see any errors you should be able to track down which
software failed to install.

I also do not guarantee that the R installs will show up
when using RStudio; I have occasionally had issues on OSX
with command line R and RStudio looking for packages on
different paths, and my R knowledge / use is limited enough
that I have never figured out the details of why that happens.
