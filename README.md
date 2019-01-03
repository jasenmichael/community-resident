# Community Resident App

clone this repo into the folder that contains your public html

clone this repo
``` bash
git clone git@github.com:jasenmichael/community-resident.git gb-resident
```

run the install script
``` bash
cd gb-resident && bash install.sh
```

this will install the frontend and backend reposotories in the src folder, and install their dependencies, finally build and copy dist folder to public_html 

## backend uses slim3 php framework
https://github.com/jasenmichael/community-resident-backend

## frontend uses nuxt spa mode with axios and vuetify
https://github.com/jasenmichael/community-resident-frontend

### post install:
you need to wire up the backend and db by copying these files, then edit appropriately - 
  - auth.example.php to auth.php
  - config.example.php to config.php
  - db.example.php to db.php
  
todo: 
 - edit install script to - install, seed, update, deploy
 - create db seed

