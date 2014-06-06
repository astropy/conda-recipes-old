# get the source...

wget https://bootstrap.pypa.io/ez_setup.py

# do the install...

$PYTHON ez_setup.py

# write out the version number....

$PYTHON -c "from __future__ import print_function; import setuptools; print(setuptools.__version__)" > __conda_version__.txt
