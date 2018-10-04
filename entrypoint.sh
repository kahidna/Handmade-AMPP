#!/bin/bash

echo ""
echo "entrypoint handmade AMPP"

echo ""
echo "start apache2 service"
service apache2 start

echo ""
echo "start mysql service"
service mysql start

echo ""
echo "done. tailing access.log"
tail -f /var/log/apache2/access.log