-- Not needed in docker

CREATE USER feli IDENTIFIED BY 'password';

CREATE DATABASE jugaad;
GRANT ALL ON jugaad.* TO feli;

FLUSH PRIVILEGES;
