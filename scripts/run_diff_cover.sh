#!/bin/bash
coverage xml
git remote update
diff-cover coverage.xml
diff-quality --violation=pep8
diff-quality --violation=pylint
