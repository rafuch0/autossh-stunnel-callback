#!/bin/bash

ssh-keygen -t rsa -N "" -f ./conf-dist/id_rsa

echo Add Key to Server autossh user

cat ./conf-dist/id_rsa.pub

echo "./autossh.host 2201" >> conf-user/sendcall.sh

echo "sendcall must be called from client rc.local"

