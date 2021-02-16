#!/bin/bash

docker-compose run --rm -u root -e USER_UID=`id -u` app sh -c "chown -R \$USER_UID:\$USER_UID /app"