#!/bin/bash

sudo chown $USER:$USER . -R
git fetch && git reset --hard HEAD
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
docker exec DNS /etc/init.d/bind9 start
echo ''
echo -e "\e[33mCURRENT INFRASTRUCTURE VERSION: \e[93m`git tag|tail -1`\e[0m"
