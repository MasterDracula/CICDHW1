#!/bin/bash

ssh user@your-server-ip "pm2 stop my-app || true"

scp -r ./target/*.jar user@your-server-ip:/path/to/deployment

ssh user@your-server-ip "cd /path/to/deployment && ./install_dependencies.sh"

ssh user@your-server-ip "cd /path/to/deployment && pm2 start my-app.jar"