#!/bin/bash

# This script is for setting up ubuntu so it has the same features as playground. And for adding the http web server.

# Dependency set up
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install nodejs npm wget nano git lua5.3

# Forward ports
lt --port 80 --subdomain actions-minecraft-client(-mirror) & to lt --port 80 --subdomain [https://actions-minecraft-client.loca.lt/vnc.html] &
# Start this code automatically:
chmod +x ./gettop.sh
sudo ./gettop.sh

# Keep action from closing:
while true; do sleep 2000; done
