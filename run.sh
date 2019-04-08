#!/bin/bash
docker kill mymongo
docker rm mymongo
docker build --no-cache -t mongo .
docker run -d -p 27017:27017 --mount source=mongodb,target=/data/db --mount source=configdb,target=/data/configdb --name mymongo mongo:latest
