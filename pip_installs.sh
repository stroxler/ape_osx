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

# basic (non-data-science) packages
pip install requests
pip install sh
pip install jinja2
pip install pyyaml
pip install sqlalchemy
pip install psycopg2
pip install Flask
pip install Flask-Cake  # (coffescript for flask)

# numerical and data python
pip install numpy
pip install scipy
pip install matplotlib
pip install cython
pip install bottleneck
pip install pandas
pip install h5py
pip install tables
