# Community Resident App

clone this repo into the folder that contains your public html

git clone https://thisrepo.git gb-resident
ls and you should have this
.
..
public_html/
gb-resident/

## backend uses slim3 php framework

in dev env create a symlink to src/backend/public/api in your root hosting directory
ln -s "$(pwd)/gb-resident/src/backend/public/api/index.php" "$(pwd)/public_html/api"

for production cp index.php
cp $(pwd)/gb-resident/src/backend/public/api/index.php" "$(pwd)/public_html/api"

later when we actually deploy we will script this and only copy the files needed to the poduction server.


## backend uses nuxt spa mode and vuetify

run - npm run build and copy the dist foler to your root hosting dorectory


