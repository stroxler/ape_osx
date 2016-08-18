set -x 

pip install --upgrade pip

# basic build setup stuff
pip install virtualenv
pip install virtualenvwrapper
pip install sphinx
pip install flake8
pip install nose

# system tools that are pip-able
pip install grin

# ipython and related
pip install pyzmq
pip install tornado
pip install ipython
pip install pudb
pip install line_profiler

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

