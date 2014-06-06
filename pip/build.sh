# get the source...

wget https://bootstrap.pypa.io/get-pip.py

# do the install...

$PYTHON get-pip.py

# write out the version number....

$PYTHON -c "from __future__ import print_function; import pip; print(pip.__version__)" > __conda_version__.txt
