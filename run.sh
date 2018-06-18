#!/bin/sh
npm install envreplace
envreplace /usr/share/nginx/html/openlmis.js

node consul/registration.js -c register -f consul/config.json
nginx -g 'daemon off;'
