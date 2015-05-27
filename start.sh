#!/bin/bash

service mysqld start

function setPassword() {
if [[ -z "$PASSWORD" ]] ; then
    PASSWORD="changeMePlz9"
fi

echo "setting mysql password to $PASSWORD"

mysqladmin -u root password $PASSWORD
}

if [ ! -f /.configured ] ; then
    setPassword $PASSWORD
    touch .configured
fi

while true; do sleep 1000; done
