#!/bin/bash

#our goal is to install a mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "ERROR:: Please run this script with root access"
#else
#  echo "INFO:: you are root user"
fi 

yum install mysql -y