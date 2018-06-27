#!/bin/sh

# Update everything (just in case)
npm install -g bower
npm rebuild
npm install --no-optional

# Build
grunt clean bower messages html javascript css assets index.html appcache styleguide

# Fix empty @name in line-item.js before running ng-docs
sed -i -e 's/@name$/@name isNonFullSupply/g' .tmp/javascript/src/requisition/line-item.js

# Generate docs
grunt docs
