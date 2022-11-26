#!/usr/bin/env sh

# abort errors
set -e

# build
yarn build

# navigate to dist directory
cd dist

# bypass Jekyll processing
echo > .nojekyll

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git checkout -B main
git add -A
git commit -m 'deploy'
git push -f git@github.com:codesupr/solid-gh-pages.git main:gh-pages

# if you are deploying to https://codesupr.github.io
# git push -f git@github.com:codesupr/codesupr.github.io.git main

cd -
