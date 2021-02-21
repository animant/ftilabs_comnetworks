#!/bin/bash

unzip -o assets.zip
unzip -o site_data.zip
unzip -o wp_db_data.zip
cd portal_patched
    unzip -o local.zip
cd ..
cd pc
    unzip -o pc1_keys.zip
cd ..
git pull && docker-compose up -d --build

echo ''
echo -e "\e[33mCURRENT INFRASTRUCTURE VERSION: \e[93m`git tag`\e[0m"
