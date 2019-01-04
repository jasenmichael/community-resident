#!/usr/bin/env bash

# install submodules
git submodule update --init --recursive

echo "======SETUP public_html folder========="
if [ ! -d ../public_html/api ] ; then
  mkdir ../public_html/api
fi

# symlink backend/public/api to root hosted folder - /api
echo 'creating symlink from $(pwd)/src/backend/public/api/index.php to $(pwd)/../public_html/api'
if [ -f $(pwd)/../public_html/api/index.php ] ; then
  echo "symlink found, recreating"
  rm "$(pwd)/../public_html/api/index.php"
fi
ln -s "$(pwd)/src/backend/public/api/index.php" "$(pwd)/../public_html/api"

# copy backend/public/api/.htaccess to root hosted folder - /api
echo 'copying .htaccess $(pwd)/src/backend/public/api to $(pwd)/../public_html/api'
if [ -f $(pwd)/../public_html/api/.htaccess ] ; then
  echo ".htaccess found, re-copying"
  rm "$(pwd)/../public_html/api/.htaccess"
fi
cp "$(pwd)/src/backend/public/api/.htaccess" "$(pwd)/../public_html/api"

# install backend dependencies
echo "======SETUP BACKEND========="
echo "1 - checkout master with - git checkout master"
echo "2 - Installing backend dependencies with - composer install -d src/backend"
# cd src/backend &&  git checkout master && composer install && cd ../../

echo "=====SETUP FRONTEND========="
echo "1 - checkout master with - git checkout master"
echo "2 - Installing frontend dependencies with - npm install"
echo "3 - building with - npm run build"
echo "4 - copying dist folder to web root with - rsync -ru --no-links src/frontend/dist/* ../public_html/"
cd src/frontend && git checkout master && npm install && npm run build && cd ../../ && rsync -ru --no-links src/frontend/dist/* ../public_html/

# cp the dist folder to the root hosted folder - /

# config database
