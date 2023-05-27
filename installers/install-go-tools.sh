#!/bin/sh

for line in $(cat /tmp/go-tools.json | jq -r '.go[] | [.name,.url] | @csv')
do
  name="$(echo $line | cut -d "," -f 1 | tr -d '"')"
  url="$(echo $line | cut -d "," -f 2 | tr -d '"')"
  echo "Installing $name" 
  /usr/local/go/bin/go install -v $url
done
