#!/bin/bash

docker-compose down --volumes --remove-orphans

echo ''
echo -e "\e[33mCURRENT INFRASTRUCTURE VERSION: \e[93m`git tag|tail -1`\e[0m"
