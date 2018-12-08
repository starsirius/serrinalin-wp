#!/bin/bash

set -e

echo "Setting up MySQL database..."
mysql -u root -p -e " \
  CREATE DATABASE serrinalin_wp_development; \
  CREATE USER serrinalin_wp_admin@localhost IDENTIFIED BY 'password'; \
  GRANT ALL PRIVILEGES ON serrinalin_wp_development.* TO serrinalin_wp_admin@localhost; \
  FLUSH PRIVILEGES;"
