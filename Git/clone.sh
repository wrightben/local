#!/bin/bash

. ~/Desktop/local/core.sh


d

db=resume
echo ""
echo "-----------------Cloning ${db}-----------------";
echo "";
mkdir ${db}
cd ${db}
gitclone ${db}

d

db=languages
echo ""
echo "-----------------Cloning ${db}-----------------";
echo "";
mkdir ${db}
cd ${db}
gitclone ${db}