#!/bin/bash

mkdir /var/run/stunnel
chown nobody:nobody /var/run/stunnel/

cd /root/callback/stunnel/

chmod 700 stunnel.pem

stunnel stunnel-recievecall.conf

