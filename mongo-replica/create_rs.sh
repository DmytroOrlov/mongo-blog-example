#!/bin/bash
mkdir data{1,2,3}
COUNT=1 && mongod --replSet rs1 --logpath "$COUNT.log" --dbpath data$COUNT --port 2701$COUNT --fork
COUNT=2 && mongod --replSet rs1 --logpath "$COUNT.log" --dbpath data$COUNT --port 2701$COUNT --fork
COUNT=3 && mongod --replSet rs1 --logpath "$COUNT.log" --dbpath data$COUNT --port 2701$COUNT --fork
sleep 1
mongo --port 27011 < init_replica.js

