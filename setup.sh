DIR=felicity17-website

cd /var/www
rm public
ln -s $DIR/build/ public

cd /var/www/$DIR
npm install
composer install
sudo -E npm install -g gulp
sudo -E bash setup/phpmyadmin.sh

bash ../setup/mail.sh

cd /var/www/
cp setup/config.php $DIR/src/app/config.php
cp $DIR/src/HTACCESS $DIR/src/.htaccess
mysql -u root <setup/createdb.sql
mysql -u root jugaad <setup/jugaad.sql
mysql -u root users <$DIR/sql/users.sql

echo "cd /var/www/$DIR" >>~/.bashrc
echo "alias build=\"cd /var/www/$DIR; gulp build\"" >>~/.bashrc
