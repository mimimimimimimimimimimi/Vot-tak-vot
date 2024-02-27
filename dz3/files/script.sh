#!/bin/bash

mkdir -p /opt/shvirtd-example-python

apt install git

git config --global core.sshCommand "ssh -o StrictHostKeyChecking=no"

sudo git clone https://github.com/mimimimimimimimimimimi/shvirtd-example-python.git /opt/shvirtd-example-python

cd /opt/shvirtd-example-python
docker compose -f compose.yaml up -d
