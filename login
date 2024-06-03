#!/bin/bash

if [ "$#" -ne 1 ]
then
    echo "인수가 1개가 아닙니다."
    exit 1
fi

user=$1

while true
do
    if who | grep -q "$user"
    then
        echo "$user 로그인함!"
        break
    fi
    sleep 60
done
