set -x 

pip install --upgrade pip

# basic build setup stuff
pip install virtualenv
pip install virtualenvwrapper
pip install sphinx
pip install flake8

# system tools that are pip-able
pip install grin

# ipython and related
pip install pyzmq
pip install tornado
pip install ipython
pip install pudb
pip install line_profiler

# testing and related, editor support
pip install nose
pip install pytest
pip install pytest-pudb
pip install pytest-instafail
pip install pytest-logger
pip install pytest-xdist
# note: for all the bells and whistles (you don't really want to combine
# all these flags, I'm just demoing them), run:
# py.test -f -n 2 -s --instafail --pudb

# ipython extensions
pip install grasp

# basic (non-data-science) packages
pip install requests
pip install sh
pip install jinja2
pip install pyyaml
pip install sqlalchemy
pip install psycopg2
pip install Flask
pip install click
pip install ruamel.yaml

# my important utility packages
pip install inspectcall
pip install calldecorators
pip install tdxutil
pip install clickutil

# numerical and data python
pip install numpy
pip install scipy
pip install matplotlib
pip install cython
pip install bottleneck
pip install pandas
pip install h5py
pip install tables

# anaconda_mode, to support spacemacs
pip install anaconda-mode

# ipython notebook with vim bindings
# NOTE sometime soonish this will need to be done using pip3
pip intall --upgrade jupyter
pip intall --upgrade notebook
mkdir -p "$(jupyter --data-dir)"/nbextensions
cd "$(jupyter --data-dir)"/nbextensions || exit
git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
chmod -R go-w vim_binding
jupyter-nbextension enable vim_binding/vim_binding

# # some stuff from bayes hack and delta 2016
# pip install geojson
# pip install descartes
# pip install shapely
# pip install tifffile
# pip install rasterio
# pip install fiona
# pip install affine
# pip install tqdm
# pip install Flask-Cake  # (coffescript for flask)

