#!/bin/sh

pwd=$(pwd)

src="$pwd/HUB/AppServer/target/universal/stage"

cd $src
echo Creating hub.tar.gz...
tar -czf ./hub.tar.gz ./lib ./bin

rem="/home/naumen/distr/hub"
user="sshgate"
server="hub.fcntp.ru"

echo Copying hub.tar.gz to ${server}...
/usr/bin/scp -i ~/.ssh/bigate_rsa -r ./hub.tar.gz ${user}@${server}:${rem}

#cp ./hub.tar.gz $pwd

cd $pwd
