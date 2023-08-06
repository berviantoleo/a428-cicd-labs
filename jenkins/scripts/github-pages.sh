#!/usr/bin/env sh
set -x
# just to ensure the build
ls build
# set the target repo
git remote set-url origin https://git:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git
## run gh-pages, please ensure the jenkins have the permission
npx gh-pages --message '[skip ci] Updates' --dist build
