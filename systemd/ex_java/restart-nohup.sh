#!/bin/bash
export JAVA_HOME=/home/admin/jdk1.8.0_201
export PATH=$JAVA_HOME/bin:$PATH
 

ps -ef | grep bzdwyc-0.0.1-SNAPSHOT.jar | grep -v grep | awk '{print $2}' | xargs kill -9

nohup java -Xms2000m -Xmx2000m -jar /home/admin/bzdwyc-0.0.1-SNAPSHOT.jar &
