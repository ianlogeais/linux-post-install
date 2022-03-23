#! /bin/bash

# Global system update

echo 'What packet manager do you want to use ? (e.g yum, apt-, apt-get...)'
read packetmanager

$packetmanager update | $packetmanager upgrade


# We install first common packet manager like pip3 or npm to avoid any problems

$packetmanager install -y npm python3-pip


# We let the user choose what server he want to install

echo 'What web server do you want to install ? '
read webserver

echo 'What database server do you want to install ? Enter only the name (e.g mysql, mariadb, firebase...) '
read bdd

if [ "$bdd" == "firebase" ]; then
    npm install -g firebase-tools
else
    $packetmanager install -y $bdd-server
fi

# Major servers

$packetmanager install -y $webserver  
$packetmanager install -y phpmyadmin


# Major languages ruby,golang,php,java,python3,nodejs,react

$packetmanager install -y php8

$packetmanager install -y ruby-full

$packetmanager install -y golang-go 

$packetmanager install -y default-jre # Java

$packetmanager install -y python3

$packetmanager install -y nodejs
npm -g install -y create-react-app
