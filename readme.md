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
./get_iterm_colors.sh
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

# manual setup

There are a lot of manual steps you'll need to take gradually,
but here are a list of some of the most important:
  - in iterm, open up preferences -> profiles, and pick a color theme you like.
    My suggestion is alien blood, but the repo that gets cloned by
    get_iterm_colors.sh has tons of cool color themes
  - also in iterm preferences -> profiles, you need to set the alt key
    behavior to allow emacs-style behavior. Change it to `Esc+` (importantly,
    *don't* change it to `Meta`... this makes sense but does the wrong
    thing)
  - there are some hoops to jump through to set the jvm to use in intellij,
    and pretty analogous steps for setting the python "SDK" for any given
    python project. I'll try to remember to add details the next time I
    find myself doing it
