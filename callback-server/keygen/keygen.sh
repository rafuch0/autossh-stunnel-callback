#!/bin/bash

rm stunnel.pem

openssl req -new -x509 -days 3650 -nodes -config stunnel.cnf -out stunnel.pem -keyout stunnel.pem
openssl gendh 2048 >> stunnel.pem
openssl x509 -subject -dates -fingerprint -in stunnel.pem
