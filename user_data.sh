#!/bin/bash

apt-get update && apt-get install -y apache2
apt-get update && apt-get install -y unzip
wget https://www.tooplate.com/zip-templates/2130_waso_strategy.zip
unzip 2130_waso_strategy.zip
cd /var/www/html
rm index.html
cp -rf /2130_waso_strategy/* .
