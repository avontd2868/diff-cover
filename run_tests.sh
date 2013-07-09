#!/bin/sh

# git remote update is needed for travis to properly find HEAD
git remote update
nosetests --with-coverage --cover-package=diff_cover
# Create the xml document from the coverage report
coverage xml
# Run diff-cover against itself
diff-cover coverage.xml