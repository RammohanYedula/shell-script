#!/bin/bash

#our goal is to install a mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "ERROR:: Please run this script with root access"
   exit 1
#else
#  echo "INFO:: you are root user"
fi 

yum install mysqll -y

if [ $? -ne 0 ]
then
   echo "Installation is error"
   exit 1
else
   echo "installation is success"
fi