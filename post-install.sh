#! /bin/bash

# Global system update

apt-get update | apt-get upgrade


# We install first common package downloader like pip3 or npm to avoid any problems

apt-get install -y npm python3-pip


# We let the user choose what server he want to install

echo 'What web server do you want to install ? '
read webserver

echo 'What database server do you want to install ? Enter only the name (e.g mysql, mariadb, firebase...) '
read bdd

if [ "$bdd" == "firebase" ]; then
    npm install -g firebase-tools
else
    apt-get install -y $bdd-server
fi

# Major servers

apt-get install -y $webserver  
apt-get install -y phpmyadmin


# Major languages ruby,golang,php,java,python3,nodejs,react

apt-get install -y php8

apt-get install -y ruby-full

apt-get install -y golang-go 

apt-get install -y default-jre # Java

apt-get install -y python3

apt-get install -y nodejs
npm -g install -y create-react-app
