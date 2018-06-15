#!/bin/sh
npm install envreplace
envreplace openlmis.js

node consul/registration.js -c register -f consul/config.json
nginx -g 'daemon off;'
