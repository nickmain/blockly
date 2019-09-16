#!/bin/bash
os_name=`uname`

if [ -f geckodriver ]; then
  exit 0
fi
echo "downloading gechdriver"

if [[ $os_name == 'Linux' ]]; then
  cd ../ && curl -L https://github.com/mozilla/geckodriver/releases/download/v0.21.0/geckodriver-v0.21.0-linux64.tar.gz | tar xz
  sleep 5
elif [[ $os_name == 'Darwin' ]]; then
  cd ../ &&  curl -L https://github.com/mozilla/geckodriver/releases/download/v0.21.0/geckodriver-v0.21.0-macos.tar.gz | tar xz
  sleep 5
fi
