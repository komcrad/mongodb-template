#!/bin/bash

echo "************************************************************"
echo "Setting up users..."
echo "************************************************************"

# create root user
nohup gosu mongodb mongo admin --eval "db.createUser({user: 'admin', pwd: 'passwd', roles:[{ role: 'root', db: 'admin' }]});"

# create app user/database
nohup gosu mongodb mongo myapp --eval "db.createUser({ user: 'myuser', pwd: 'passwd', roles: [{ role: 'readWrite', db: 'myapp' }]});"

echo "************************************************************"
echo "Shutting down"
echo "************************************************************"
nohup gosu mongodb mongo admin --eval "db.shutdownServer();"
