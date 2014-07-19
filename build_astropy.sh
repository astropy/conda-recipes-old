#!/bin/bash

# Build  astropy recipe specified on command line
# for the python/numpy version combinations that anaconda
# does not provide.

if [ $# != 1 ]
then
    echo "Usage: build_astropy.sh recipe_name"
    exit 1
fi

astropy_version=$1

export PATH=~/miniconda/bin:$PATH

CONDA_PY=32 CONDA_NPY=18 conda build $astropy_version
CONDA_PY=32 CONDA_NPY=16 conda build $astropy_version
CONDA_PY=27 CONDA_NPY=16 conda build $astropy_version
CONDA_PY=27 CONDA_NPY=15 conda build $astropy_version
CONDA_PY=27 CONDA_NPY=17 conda build $astropy_version
