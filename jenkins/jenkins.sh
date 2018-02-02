#!/bin/bash

jenkins_home="/var/jenkins_home"
if [ ! -d $jenkins_home ]
then
	printf "\n"
	echo "criando dir "$jenkins_home"..."
	mkdir -p $jenkins_home
fi
chmod 777 $jenkins_home

printf "\n"
echo "removing docker..."
docker rm -f jenkins


#printf "\n"
#echo "docker build..."
#docker run -v $jenkins_home:/var/jenkins_home -d -p 1000:8080 -p 50000:50000 --name jenkins jenkins:2.60.3
#docker build -t registry.phoenix4go.com/jenkins .


printf "\n"
echo "docker run..."
#docker run -v $jenkins_home:/var/jenkins_home -d -p 1000:8080 -p 50000:50000 --name jenkins jenkins:2.60.3
docker run -v $jenkins_home:/var/jenkins_home -d -p 1000:8080 -p 50000:50000 --name jenkins jenkins:2.60.3

printf "\n"
echo "docker ps..."
docker ps

printf "\n"
echo "Waiting..."
sleep 6
echo "**************** initialAdminPassword **********************"
cat $jenkins_home/secrets/initialAdminPassword
