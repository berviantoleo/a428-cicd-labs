#!/usr/bin/env sh
# just to ensure the build
ls build
# use gh-pages npm
npm install -g --silent gh-pages@5.0.0
## run gh-pages, please ensure the jenkins have the permission
gh-pages --message '[skip ci] Updates' --dist build
