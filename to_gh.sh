#!/bin/bash
git checkout master
gitbook build .
cp -R _book/* ~/tmp/gitbook
git checkout gh-pages
cp -R ~/tmp/gitbook/* .
git add .
git commit -m 'Publish by shell'
git push origin gh-pages
git checkout master