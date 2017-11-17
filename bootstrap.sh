#!/bin/bash
echo "Starting mysql service"
service mysql start

echo "Create DB if not exists"
echo "CREATE DATABASE IF NOT EXISTS website" | mysql

echo "Starting apache service"
service apache2 start

/bin/bash