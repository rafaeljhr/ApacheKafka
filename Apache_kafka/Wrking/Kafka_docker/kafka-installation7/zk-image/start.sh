#!/bin/bash
mkdir -p /opt/zookeeper-3.4.6/state/zookeeper
echo 1 > /usr/local/zookeeper/state/zookeeper/myid

zookeeper-3.4.6/bin/zkServer.sh start
sleep 5

