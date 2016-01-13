#!/usr/bin/env bash

export JAVA_HOME=/opt/java/java8
export NODE_HOME=/opt/gp/stands/hub_master/node-v4.2.0-linux-x64/bin
export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8
export PATH=$JAVA_HOME/bin:$PATH:/opt/gp/stands/hub/sbt/bin/:$NODE_HOME

cd ./HUB
git fetch origin
git checkout master
git reset --hard origin/master
git pull

cd ./AppServer

cd ./modules/hubapp/public/
npm install
npm run build

cd ../../../
pwd

/opt/gp/stands/hub_master/sbt/bin/sbt -java-home $JAVA_HOME clean stage
