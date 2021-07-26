#!/bin/bash
mkdir -p /usr/local/kafka/kafka-logs

kafka_2.11-2.2.1/bin/kafka-server-start.sh kafka_2.11-2.2.1/config/server.properties
