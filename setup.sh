#!/bin/bash

if [ -z "$1" ]
  then
    echo "Enter your uni as an argument eg."
    echo "sh setup.sh ab1234"
    exit 1
fi

git clone https://github.com/cs3134/homework-master.git
mv homework-master homework-$1
cd homework-$1
echo "Original remote -v setup"
git remote -v
git remote rename origin upstream
echo "Renamed remote -v setup"
git remote -v
git remote add origin https://github.com/cs3134/homework-$1
echo "Final remote -v setup"
git remote -v
git add --all
git commit -m "first commit made from setup.sh"
git push -u -f origin master
