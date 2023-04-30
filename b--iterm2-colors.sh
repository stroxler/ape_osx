# To import colors to iterm2:
# - 
# - go to iterm2 > options (command-,) > profiles > colors
# - click import, and navigate

# This curated list of themes is the ones that
# - appealed to me
# - for which every text color is visible against the background
#   - I was particularly concerned with zsh-autosuggestions, which
#     can produce invisible suggestions on a bad theme (including the
#     built-in solarized dark).
#
#
# Find more themes at
# https://iterm2colorschemes.com/

rm -rf ~/_iterm2_colors
mkdir ~/_iterm2_colors

function get_iterm_colors () {
	url="$1"
	name="$2"
	echo "Fetching $name..."
	curl "$url" > ~/_iterm2_colors/"$name".itermcolors
}


get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Seafoam%20Pastel.itermcolors seafoam-pastel
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Seafoam%20Pastel.itermcolors soft-server
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Spacedust.itermcolors spacedust
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/SpaceGray.itermcolors spacegray
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Subliminal.itermcolors subliminal
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Tomorrow%20Night.itermcolors tomorrow-night
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Violet%20Light.itermcolors violet-light
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Zenburn.itermcolors zenburn
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/BlueDolphin.itermcolors blue-dolphin
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/PaleNightHC.itermcolors palenight-hc
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Afterglow.itermcolors afterglow
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Arthur.itermcolors arthur
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/BirdsOfParadise.itermcolors birds-of-paradise
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/BlulocoDark.itermcolors bluloco-dark
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Chalk.itermcolors chalk
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/DoomOne.itermcolors doom-one
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/ForestBlue.itermcolors forest-blue
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/GruvboxLight.itermcolors gruvbox-light
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/N0tch2k.itermcolors n0tch2k
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Relaxed.itermcolors relaxed
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/SeaShells.itermcolors seashells
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark%20Higher%20Contrast.itermcolors solarized-dark-higher-contrast
get_iterm_colors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark%20-%20Patched.itermcolors solarized-dark-patched
