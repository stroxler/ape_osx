# Initial manual steps

## System Preferences stuff

Get trackpad working:
 - Trackpad tap to click is under Settings -> Mouse and Trackpad
 - Three-finger drag is under Settings -> Accessiblity -> Mouse and Trackpad
 - go to Settings -> Mission Control and disable separate spaces for separate
   displays
 - add an additional space by entering mission control (ctl + up arrow) and
   clicking "+"

## Install homebrew

It's best to google for the homebrew home page and use their install
instructions.

## Bootstrap github

Run
```
ssh-keygen -b 4096
cat ~/.ssh/id_rsa.pub
```
and then log into github and add the key

# Run the core install scripts

Each of these has a letter prefix, e.g. `a--brew.sh`. All of the
scripts with the same prefix can be run in parallel, or you can
run all scripts in serial with
```
bash run-all-setup-scripts.sh
```

NOTE / TODO these setup scripts are now coupled to the `stroxler/config`
git repository; I should probably try to refactor my config into various
repositories, and have a more general way to run setup scripts at some
point in the future, so that it's easier to keep the setup scripts and
config that they assume in the same place.

## Note on rerunning config sync:

Once the setup is finished, `.local/bin` will be on your `PATH`, so you can
just use
```
cd ~
confar-v0 -s <source_repo> -d ~
```
any time you want to update your config.

# Other Manual Steps

## Iterm colors

Open iterm and do Preferences > Profiles > Colors

There, you can set the color theme using a dropdown at bottom-right. Of the
preset themes, only solarized is much good, but I don't really like emacs
and terminal having the same colors.

You can also import colors from this same dropdown. As part of the download
script I pulled in the `Nord` theme (in `~`), which is a pretty nice one that
doesn't conflict with what I use in any editor.

## Open up key apps, to get them bootstrapped

The really important ones are
 - finder
   - add your home directory to the left panel by navigating up from one
     of the other directories (e.g. Documents) till you can see it, and then
     dragging it over
 - clipy (should start at system boot)
 - spectacle (should start at system boot)
 - iterm
   - go to `profiles -> default` and do the following:
     - in the colors tab at bottom right, add ~/Nord.itermcolors and then
       select the Nord theme
     - in the keys tab, set both the right and left Option keys to do Meta
       (or at least the left one)
 - chrome (set as default), and install extensions:
   - [stylus](https://chrome.google.com/webstore/detail/stylus/clngdbkpkpeebahjckkjfobafhncgmne?hl=en)
     - then go to https://raw.githubusercontent.com/StylishThemes/GitHub-Dark/master/github-dark.user.css
   - [octotree](https://chrome.google.com/webstore/detail/octotree/bkhaagjahfmjljalopjnoealnfndnagc?hl=en-US)
     - use ctl-shift-s to activate (or just click the > at top left)
   - [json viewer awesome](https://chrome.google.com/webstore/detail/json-viewer-awesome/iemadiahhbebdklepanmkjenfdebfpfe?hl=en)
   - [lastpass](https://chrome.google.com/webstore/detail/lastpass-free-password-ma/hdokiejnpimakedhajhdlcegeplioahd?hl=en-US)
   - [ublock origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=en)
   - [FF (fuzzyfinder)](https://chrome.google.com/webstore/detail/ff-fuzzy-finder-for-chrom/dbgeolnmmjmhcfndmmahnpicpmnpibep?hl=en)
     - type ff SPC in the address bar to use
     - note that you can go to the start of an address and type ff SPC
       even after you've started typing normally (this was an issue with
       some other plugins I used)

## Copy over iTunes music from an external hard drive (if you want)

Open Terminal.app and run
```
rm -rf ~/Media/iTunes
cp -R /Media/<Drive_Name>/<path_to_iTunes> ~/Media/iTunes
```

## Handling security flags when opening brew casks via spotlight

If you download an app from `brew cask` that you trust, but
generates an error about it being from an unidentified
developer when you try to open using spotlight, run
```
open /Applications
```
to get a Finder window, then right-click and "Open" the app,
which allows you to override the security protections. Obviously
only do this for apps you trust.

## VsCode initialization

Install the vim extension, since without this I can't type haha.

### rust - vscode is very good for this, maybe the best

Install the `Rust (rls)` and `Rusty Code` extensions, which between them
make vscode pretty good for rust development. I'd say spacemacs is also
pretty solid; the one big advantage of vscode is that it shows the type under
cursor on hover, which I have thus far had trouble getting from spacemacs.

If you have any issues, as of Fall of 2018
[this video](https://www.youtube.com/watch?v=zSIZB8WWa-o&list=PLJbE2Yu2zumDF6BX6_RdPisRVHgzV02NW&index=19)
was a pretty good intro to rust tooling setup.

### resonml - honestly thus far vscode isn't so great, but keep trying

Probably install the reaonml plugin. As of me writing (late October 2018),
my experience is that it doesn't seem to actually work - I use emacs for
ocaml, and so far nothing is very good for reasonml. But the tutorials claim
it works well, which means that there's probably either a temporary issue
or that my setup is subtly incorrect.

### more to try out (if I get frustrated with spacemacs/spacevim)


#### Scala

I really want to try out ensime; the `Scala Language Server` might be the
best way for me to try it out quickly (neovim might also be good) because
ensime and spacemacs are incompatible.

Note that if I decide ensime rocks but I'd rather not use vscode, I could make
a dedicated emacs environment, or try to get neovim+ensime working.

... There's actually a second scala ide support package, the `Scala (sbt)`
plugin, which apparently uses sbt. I have no idea if it's much good. It has
a lot of stars, fwiw.

#### Haskell

Thus far spaceemacs + haskell has worked decently for me, but I sometimes get
confused and I do find the type hints to be a little less than I want (ocaml
spacemacs is a bit better). If I start writing a lot of haskell, it may be
worth trying out the haskell language server.
