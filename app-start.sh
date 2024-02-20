#!bin/bash
mkdir /home/app
mkdir /home/app/java
mkdir /home/app/config
mv consumer-app.jar /home/app/java
mv consumer.properties /home/app/config
mv consumer-start.sh /home/app
mv consumer.service /etc/systemd/system
systemd daemon reload
systemctl enable consumer
systemctl start consumer
