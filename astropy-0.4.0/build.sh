# use the offline option to prevent querying PyPI for a newer
# version of astropy-helpers. conda build prevents accessing PyPI
# so omitting --offline raises an exception when astropy_helpers
# looks for a new version.

#
# could also be fixed by adding a configuration item to the
# ah_bootstrap section, I suppose...
$PYTHON setup.py install --offline --no-git

