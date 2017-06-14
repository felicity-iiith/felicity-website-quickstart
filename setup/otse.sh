#!/bin/bash

cd /var/www
# Remove the next two lines if you are not behind IIIT proxy
cat setup/proxyenv.sh | cat >>/home/vagrant/.bashrc
source setup/proxyenv.sh
git clone --recursive https://github.com/felicity-iiith/felicity18-website.git
bash /var/www/setup.sh
