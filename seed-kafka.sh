#!/bin/sh
/usr/bin/start-kafka.sh &
sleep 15
echo k,v | /opt/kafka_2.11-2.0.0/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic kbrowse --property parse.key=true --property key.separator=,
echo topic,myvalue | /opt/kafka_2.11-2.0.0/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic wills --property parse.key=true --property key.separator=,
while true; do sleep 1000; done