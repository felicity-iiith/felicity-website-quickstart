#!/bin/bash

DIR=felicity-website

git clone --recursive -b master https://github.com/felicity-iiith/felicity18-website.git $DIR

cp setup/config.php $DIR/src/app/config.php
cp $DIR/src/HTACCESS $DIR/src/.htaccess
