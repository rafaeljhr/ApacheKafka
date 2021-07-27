#!/bin/bash
mkdir -p /opt/kafka_2.11-2.2.1/kafka-logs

kafka_2.11-2.2.1/bin/kafka-server-start.sh kafka_2.11-2.2.1/config/server.properties
