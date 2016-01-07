#!/bin/bash

gitbook build .
cp -R -a _book/* book-page/
cd book-page
git add .
git commit -m 'Publish by shell'
git push origin gh-pages
