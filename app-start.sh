#!bin/bash
mkdir /home/app
mkdir /home/app/java
mkdir /home/app/config
mv -f consumer-app.jar /home/app/java
mv -f consumer.properties /home/app/config
mv -f consumer-start.sh /home/app
mv -f consumer.service /etc/systemd/system
systemd daemon reload
systemctl enable consumer
systemctl start consumer
