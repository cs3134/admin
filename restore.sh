#!/bin/bash

if [ -z "$1" ]
  then
    echo "Enter your uni as an argument eg."
    echo "sh setup.sh ab1234"
    exit 1
fi

echo "Cloning student repo"
git clone https://github.com/cs3134/homework-$1.git
git remote -v
echo "Adding upstream"
git remote add upstream https://github.com/cs3134/homework-master.git
git remote -v
echo "Done"
