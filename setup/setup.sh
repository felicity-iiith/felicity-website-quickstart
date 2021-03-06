DIR=felicity-website

cd /var/www
rm public
ln -s $DIR/build/ public

cd /var/www/$DIR
sudo -E npm install -g gulp
npm install
composer install
bash ../setup/mail.sh

cd /var/www/

sudo -E bash setup/phpmyadmin.sh

cp setup/config.php $DIR/src/app/config.php
sed -i "s/'db_host'   => 'db',/'db_host'   => 'localhost',/g" $DIR/src/app/config.php 
cp $DIR/src/HTACCESS $DIR/src/.htaccess
mysql -u root <setup/1_createdb.sql
mysql -u root <setup/db/2_jugaad.sql
mysql -u root <setup/db/3_create_jugaad_admin.sql
# mysql -u root users <$DIR/sql/users.sql

echo "cd /var/www/$DIR" >>~/.bashrc
echo "alias build=\"cd /var/www/$DIR; gulp build\"" >>~/.bashrc

cd /var/www/$DIR
gulp build
