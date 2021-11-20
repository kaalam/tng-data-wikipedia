#!/bin/bash

# remove previous compressed data file
rm -f compressed_data/tng-data-wikipedia.tar.gz

# build the new one
tar -czvf compressed_data/tng-data-wikipedia.tar.gz data/

# clean
find data/* | grep -v __WARNING__ | xargs rm -rf

# push
git add .
git commit -m "[AUTOGEN] automated commit, $(date)"
git push origin master
