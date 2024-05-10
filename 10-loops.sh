#!/bin/bash

#echo 1
#echo 2
#echo 3

#for i in {1..20}
#do
 #   echo $i 
#done


#########



USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m]"
Y="\e[33m"


if [ $USERID -ne 0 ]
then
    echo -e "$R Error: please run this script with root access $N"
    exit 1
fi

for i in $@
do 
    yum install $i -y
done


