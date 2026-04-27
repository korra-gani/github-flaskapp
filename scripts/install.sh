#!/bin/bash

echo "Updating system..."
yum update -y

echo "Installing Docker..."
yum install docker -y

echo "Starting Docker..."
service docker start

echo "Enabling Docker..."
chkconfig docker on

echo "Adding ec2-user to docker group..."
usermod -aG docker ec2-user

echo "Install completed!"
