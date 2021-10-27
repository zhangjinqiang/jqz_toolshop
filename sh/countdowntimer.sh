#!/bin/bash

if [ -z $1 ]
then
  echo "countdown seconds need to be provided."
  exit 1
fi

seconds=$1;
date1=$((`date +%s` + $seconds));
while [ "$date1" -ge `date +%s` ]; do
    echo -ne "$(date -u --date @$(($date1 - `date +%s` )) +%H:%M:%S)\r";
done

echo "ding dong!! $seconds seconds have passed"
