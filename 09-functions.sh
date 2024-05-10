#!/bin/bash

#our goal is to install a mysql

USERID=$(id -u)
VALIDATE(){
   if [ $? -ne 0 ]
then
   echo "$2 is error"
   exit 1
else
   echo "$2 is success"
fi
}
if [ $USERID -ne 0 ]
then
   echo "ERROR:: Please run this script with root access"
   exit 1
#else
#  echo "INFO:: you are root user"
fi 

yum install mysql -y

VALIDATE $1 "instaling mysq"



yum install postfix -y

VALIDATE $1  "installing postfix"