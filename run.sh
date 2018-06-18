#!/bin/sh
apt-get install -y gettext
envsubst < /usr/share/nginx/html/openlmis.js > temp.js
cat temp.js > /usr/share/nginx/html/openlmis.js

node consul/registration.js -c register -f consul/config.json
nginx -g 'daemon off;'
