#!/bin/bash
coverage erase
nosetests --with-coverage --cover-package=diff_cover

# We run the install script to verify that it doesn't
# raise any exceptions -- if it fails
# then the build should fail in Travis
echo "Testing installation script..."
python setup.py install
