#!/bin/bash

sudo chown $USER:$USER . -R
git reset --hard HEAD && git pull
unzip -o assets.zip
unzip -o site_data.zip
unzip -o wp_db_data.zip
cd portal_patched
    unzip -o local.zip
cd ..
cd pc
    unzip -o pc1_keys.zip
cd ..
sudo chown $USER:$USER . -R

docker-compose up -d --build

echo ''
echo -e "\e[33mCURRENT INFRASTRUCTURE VERSION: \e[93m`git tag|tail -1`\e[0m"
