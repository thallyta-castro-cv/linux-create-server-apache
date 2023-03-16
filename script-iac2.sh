#!/bin/bash

echo "Código para atualizar o servidor..."
apt-get update
apt-get upgrade -y

echo "Código para instalar os programas necessários..."
apt-get install apache2 -y
apt-get install unzip -y


echo "Código para baixar e copiar os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
