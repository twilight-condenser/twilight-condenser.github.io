#!/bin/bash


echo "deploy start\n"

wintersmith build --clean -o build
cp -a build ../twilight-build-temp
git checkout master

cp -a ../twilight-build-temp/* ./
rm -rf ../twilight-build-temp

