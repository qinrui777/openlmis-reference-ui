#!/bin/sh

# Update everything (just in case)
npm rebuild
npm install --no-optional

# Build and test
grunt clean bower messages html javascript css assets index.html appcache test styleguide

# Fix empty @name in line-item.js before running ng-docs
sed -i -e 's/@name$/@name isNonFullSupply/g' .tmp/javascript/src/requisition/line-item.js

# Generate docs
grunt docs reports
