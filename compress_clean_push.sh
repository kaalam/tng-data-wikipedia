#!/bin/bash

# remove previous compressed data file
rm -f compressed_data/*

# build the new one
7z a -r -v99m compressed_data/tng-data-wikipedia.7z data/

# clean
find data/* | grep -v __WARNING__ | xargs rm -rf

# push
git add .
git commit -m "[AUTOGEN] automated commit, $(date)"
git push origin master
