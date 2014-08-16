#!/bin/bash


echo "deploy start\n"

## for builder
git checkout builder
git add -A
git commit -m "auto commit from deploy.sh"
git push origin builder

## for master
wintersmith build --clean -o build
cp -a build ../twilight-build-temp
git checkout master

cp -a ../twilight-build-temp/* ./
rm -rf ../twilight-build-temp

git add -A
git commit -m "auto push contents from deploy.sh"
git push origin master

## to branch buider
git checkout builder
git clean -f -d -n

echo "done!"
