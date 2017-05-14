# Felicity Website quickstart

This is a vagrant box to ease the development of the felicity website that uses
[ScotchBox](http://box.scotch.io) as its LAMP box.


## Install vagrant
Just follow the steps here [click here](https://www.vagrantup.com/downloads.html).

Fedora users can use the centos one.

Ubuntu users can directly install from the repos. (`sudo apt install vagrant`)

## Install virtualbox
Google or [click here](https://www.virtualbox.org/wiki/Downloads)

## Clone this repo
```bash
git clone https://github.com/felicity-iiith/felicity-website-quickstart.git
```

## Clone the website
Currently
```bash
git clone https://github.com/felicity-iiith/felicity17-website.git
```

## Start the box
```bash
vagrant up
```

## SSH into the box
```bash
vagrant ssh
```

## Run inside the SSH shell for setup
```bash
cd /var/www
bash setup.sh
source ~/.bashrc
sudo -E npm install -g gulp
```

## Build the website
```bash
build
```
(inside the ssh shell)

Now see the website in action at http://192.168.33.10/

## Other useful commands
Vagrant (See [this](http://box.scotch.io) for more help)
```bash
vagrant halt # shutdown the box
vagrant suspend # suspend the box
```

Inside the SSH shell
```bash
cd /var/www/felicity17-website # the project directory
gulp build # builds the website
gulp watch # watch for changes and rebuild automatically
```
