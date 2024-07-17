#!/bin/bash
cd /usr/local/
sudo unlink kafka
sudo ln -s kafka_2.13-2.8.1 kafka
sudo chown -R hdu:hdu kafka*
cp -r kafka_2.11-2.2.1/sncluster/ kafka/
sed -i 's/server.2=localhost:2888:3888/server.2=localhost:2889:3889/g' /usr/local/kafka/sncluster/zookeeper1.properties 
sed -i 's/server.3=localhost:2888:3888/server.2=localhost:2890:3890/g' /usr/local/kafka/sncluster/zookeeper1.properties 
echo 4lw.commands.whitelist=* >> /usr/local/kafka/sncluster/zookeeper1.properties
sed -i 's/server.2=localhost:2888:3888/server.2=localhost:2889:3889/g' /usr/local/kafka/sncluster/zookeeper2.properties     
sed -i 's/server.3=localhost:2888:3888/server.2=localhost:2890:3890/g' /usr/local/kafka/sncluster/zookeeper2.properties
echo 4lw.commands.whitelist=* >> /usr/local/kafka/sncluster/zookeeper2.properties
sed -i 's/server.2=localhost:2888:3888/server.2=localhost:2889:3889/g' /usr/local/kafka/sncluster/zookeeper3.properties     
sed -i 's/server.3=localhost:2888:3888/server.2=localhost:2890:3890/g' /usr/local/kafka/sncluster/zookeeper3.properties
echo 4lw.commands.whitelist=* >> /usr/local/kafka/sncluster/zookeeper3.properties
cat /usr/local/kafka/sncluster/zookeeper1.properties
cat /usr/local/kafka/sncluster/zookeeper2.properties
cat /usr/local/kafka/sncluster/zookeeper3.properties
