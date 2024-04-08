#!/bin/bash

echo "Atulizando o SO..."

apt-get update -y
apt-get upgrade -y


echo "Instalando e iniciando serviços..."

apt-get install apache2 -y
systemctl start apache2
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
