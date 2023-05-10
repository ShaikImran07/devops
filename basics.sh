#!/bin/sh

# this is a shell scrpting programming class

#echo "input username:"
#read username

#echo "given username is:"$username
#pwd
INPUT=MICROCARE
Microcare_123="15-04-2023"

#echo $Microcare_123

Microcare_123="15-04-2024"

unset Microcare_123
echo $Microcare_123


NAME="READONLY"

#readonly NAME

NAME="WRITE"

echo "$0"

echo "$1"

#mkdir "$2"

echo $#  #number of arguments passed to the script
#echo $@
cd /home/ec2-user2/
for PARAMS in $*
do
pwd
echo $PARAMS
sudo mkdir $PARAMS
cd $PARAMS
done
