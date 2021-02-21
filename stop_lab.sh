#!/bin/bash

docker-compose down

echo ''
echo -e "\e[33mCURRENT INFRASTRUCTURE VERSION: \e[93m`git tag|tail -1`\e[0m"
