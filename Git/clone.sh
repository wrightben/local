#!/bin/bash

. ~/Desktop/local/core.sh


d

db=resume
echo "Cloning ${db}"
mkdir ${db}
cd ${db}
gitclone ${db}

d

db=languages
echo "Cloning ${db}"
mkdir ${db}
cd ${db}
gitclone ${db}