#!/bin/bash
sudo su
cd
apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
echo "<h1>Hello All...Welcome to AWS Cloud && DevOps Using Terraform</h1>" > /var/www/html/check.html