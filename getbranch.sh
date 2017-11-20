#!/bin/bash
export REAL_BRANCH=$(git ls-remote origin | sed -n "\|$TRAVIS_COMMIT refs/heads/|{s///p;q}" )
echo "'$REAL_BRANCH'"
echo "'$TRAVIS_BRANCH'"
echo ${TRAVIS_BRANCH:-$REAL_BRANCH}
