#!/bin/bash
git ls-remote origin
git ls-remote origin | grep $TRAVIS_BRANCH
git ls-remote origin | sed -n "s|$TRAVIS_COMMIT\s\+refs/heads/||p"
git ls-remote origin | sed -n "s|$TRAVIS_COMMIT\s\+refs/heads/||p" | head -n1
git ls-remote origin | sed -n "\|$TRAVIS_COMMIT\s\+refs/heads/|{s///p;q}"
export REAL_BRANCH=$(git ls-remote origin | sed -n "\|$TRAVIS_COMMIT\s\+refs/heads/|{s///p;q}" )
echo "'$REAL_BRANCH'"
echo "'$TRAVIS_BRANCH'"
echo ${TRAVIS_BRANCH:-$REAL_BRANCH}
