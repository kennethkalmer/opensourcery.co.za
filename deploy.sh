#!/bin/sh

set -ex

bundle exec middleman build --clean
rsync -e "ssh -p 222" -avz build/ opensourcery.co.za@opensourcery.co.za:/var/www/opensourcery.co.za/
