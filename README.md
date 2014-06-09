About
-----

This repository contains recipes for building various packages needed for Astropy continuous integration and affiliated packages. It is needed because ``conda`` cannot install all required versions. For example, we need to build the Python 3.2 packages because these are not available by default.

The packages are uploaded to http://binstar.org, and can be seen at https://binstar.org/astropy-ci-extras.

To make use of these packages, you then need to make use of the ``astropy-ci-extras`` channel when using ``conda``:

```
conda install -c astropy-ci-extras ...
```

Setup
-----

The first time you want to build binaries, you will need to do the following:

```
# You need libbz2 to get bz2 support in python
sudo apt-get install libbz2-dev

# Install miniconda
wget http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O miniconda.sh
chmod +x miniconda.sh
./miniconda.sh -b
export PATH=$HOME/miniconda/bin:$PATH
conda update --yes conda

# Install the conda build system
conda install --yes conda-build

# Install binstar
conda install binstar
```

Building
--------

To build binary packages:

```
# get some of the recipes you need....
git clone https://github.com/astropy/conda-recipes.git

# build some stuff...
cd conda-recipes-astropy

# order matters for the next three
conda build python3.2
CONDA_PY=32 conda build setuptools
CONDA_PY=32 conda build pip

# build numpy before anything that needs numpy, of course
CONDA_PY=32 conda build numpy-1.6.2

# for the sake of this example, suppose this was numpy 1.6.1 you just built
CONDA_PY=32 CONDA_NPY=16 conda build scipy
```

Uploading
---------

To upload manually:

```
binstar login
binstar upload ~/miniconda/conda-bld/linux-64/package-name-here.tar.bz2
```
