#!/bin/bash
export REAL_BRANCH=$(git ls-remote origin | grep $TRAVIS_COMMIT | sed -n 's|refs/heads/||p;q' | cut -f2 -d' ')
echo "'$REAL_BRANCH'"
echo "'$TRAVIS_BRANCH'"
echo ${TRAVIS_BRANCH:-$REAL_BRANCH}
