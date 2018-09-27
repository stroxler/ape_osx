# Initial manual steps

## System Preferences stuff

Get trackpad working:
 - Trackpad tap to click is under Settings -> Mouse and Trackpad
 - Three-finger drag is under Settings -> Accessiblity -> Mouse and Trackpad
 - go to Settings -> Mission Control and disable separate spaces for separate
   displays
 - add an additional space by entering mission control (ctl + up arrow) and
   clicking "+"


## Copy over iTunes music from an external hard drive (if you want)

Open Terminal.app and run
```
rm -rf ~/Media/iTunes
cp -R /Media/<Drive_Name>/<path_to_iTunes> ~/Media/iTunes
```

## Bootstrap homebrew

Go to the homebrew website for the latest command (it can occasionally
change) and run that. It will prompt for your password more than once,
and take a while because of the xcode install.

## Get basic homebrew packages

Run `bash ./brew.sh` to get the most essential

## Get my personal config set up

NOTE: with some luck these instructions will soon be out of date,
because I want to replace `confar-v0` with something nicer and
also split my `stroxler/config` repo into several domain-specific
repositories. But this is current as of September 2018.

First, make sure you've installed stack.

Then:
```
git clone git@github.com:stroxler/config.git
git clone git@github.com:stroxler/confar-v0.git

cd confar-v0
stack install
```

Now you should have `confar` installed in `.local/bin`. You can bootstrap
the config with
```
cd ~
.local/bin/confar-v0 -s ~/config -d ~
```

Going forward, `.local/bin` will be on your `PATH`, so you can just use
```
cd ~
confar-v0 -s <source_repo> -d ~
```
when you want to update. Note that confar isn't the most robust program
at this point (it was a hack project, so this isn't surprising). The two
things that have come up thus far are that
  - it seems to be sensitive to the directory you're in some of the time
    (in particular when I was in `~/config` and tried to run it I ran
    into issues)
  - it cannot clean up after itself, so be sure to manually delete symlinks
    in ~ whenever you move files around

I'm hoping to improve `confar` a lot going forward.

# Other Manual Steps

## Iterm colors

Open iterm and do Preferences > Profiles > Colors

There, you can set the color theme using a dropdown at bottom-right. Of the
preset themes, only solarized is much good, but I don't really like emacs
and terminal having the same colors.

You can also import colors from this same dropdown. As part of the download
script I pulled in the `Nord` theme (in `~`), which is a pretty nice one that
doesn't conflict with what I use in any editor.

## Setting up chrome

See [chrome.md](./chrome.md) for a description of my favorite

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

