#!/bin/bash
service ngnix status | grep -i running

if [ $? -eq 0 ]
then
    echo "The Nginx Service is running..."
else
    echo " Lets restart ngnix service"
    service ngnix start
fi