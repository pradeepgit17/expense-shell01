
#/bin/bash

USERID=$(id -u)


VALIDATE(){

if [ $1 -ne 0 ]
then
  echo " $2.... installation is fails"
  exit 1
else
  echo " $2.... installation is success"

  fi 
}

if [ $USERID -ne 0 ]
then
   echo "please run the scripts with root access"
   exit 1
else
   echo "your are super user"
fi 

dnf install mysql-server -y
VALIDATE $? ""installing the mysql"
