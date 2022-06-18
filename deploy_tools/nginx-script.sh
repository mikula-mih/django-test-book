#!bin/bash

export SITENAME=superlists-staging.ottg.eu

sudo cp nginx_django_default /etc/nginx/sites-available/$SITENAME

sudo ln -s /etc/nginx/sites-available/$SITENAME /etc/nginx/sites-enabled/$SITENAME
ls -l /etc/nginx/sites-enabled

sudo systemctl reload nginx

echo all is Done!
