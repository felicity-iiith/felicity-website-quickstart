# Felicity Website Quickstart

# New method (via docker)

- Install `docker` and `docker-compose`
- `bash setup/docker-setup.sh`
- `docker-compose up`

Access the site at http://localhost:8080/

Access PHPMyAdmin at http://localhost:8081/ (user: feli, password: password)

## Troubleshooting
- Make sure environment variables `HTTP_PROXY` and `HTTPS_PROXY` are set correctly
 (`http://proxy.iiit.ac.in:8080/` for IIIT network)
- You might have to run docker in root, check if the proxy environment variables are ste correctly there also
- During the first run, it might take more time, especially to get/build the npm modules (in gulp container)
- The code has not been built till a build directory appears in your website directory and the build will be updated automatically

# Old method (via vagrant)

This is a vagrant box to ease the development of the felicity website that uses
[ScotchBox](http://box.scotch.io) as its LAMP box.

## Important notes
- While creating a new account, name your username as "admin"
- We use mailcatcher and therefore when trying to create account, mails are not
  actually sent, but shown on http://192.168.33.10:1080/ . If you dont want
  this, you can configure your students/research mail in `src/app/config.php` from
  the parameters on [this self-help page]( https://self-help.iiit.ac.in/wiki/index.php/Configuration_of_Thunderbird_client_for_IIITH_Mail_Servers#IIIT-H_Students_Server) .
  Also ignore mailcatcher errors for now.
- PHPMyAdmin is available on http://192.168.33.10/phpmyadmin . User is `feli`
  and password is `password`
- `gulp watch` does not work inside the vagrant box, and you can install gulp
  in your host (`sudo npm install -g gulp`) and do `gulp watch` to make it work.
  (You might have to reinstall node dependencies or do `npm rebuild`)


## Install vagrant
Just follow the steps here [click here](https://www.vagrantup.com/downloads.html).

Fedora users can use the centos one.

Ubuntu users can directly install from the repos. (`sudo apt install vagrant`)

## Install virtualbox
Google or [click here](https://www.virtualbox.org/wiki/Downloads)

## Clone this repo
```bash
git clone https://github.com/felicity-iiith/felicity-website-quickstart.git
cd felicity-website-quickstart
```

## Start the box
Will take a lot of time (15-30 minutes) the first time as it automatically
installs dependencies
```bash
vagrant up
```

## SSH into the box
```bash
vagrant ssh
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
cd /var/www/felicity-website # the project directory
gulp build # builds the website
gulp watch # watch for changes and rebuild automatically
```
