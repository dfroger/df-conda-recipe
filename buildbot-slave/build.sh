hash -r

cd slave
pip install .

# note:
# If not using pip but:
#    python setup.py install
# Create the package, but it can not be used:
#     pkg_resources.ResolutionError: No script named 'buildbot'
