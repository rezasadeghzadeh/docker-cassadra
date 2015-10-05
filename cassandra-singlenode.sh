#!/usr/bin/env bash

echo "=========================================================================================================================="
echo "starting running cassandra server"
echo "=========================================================================================================================="

cassandra  &
while :
do
	echo "Cassandra running, Press [CTRL+C] to stop.."
	sleep 1
done


