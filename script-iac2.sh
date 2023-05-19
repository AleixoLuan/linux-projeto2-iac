#!/bin/bash

echo "Baixando atualizações e instalando."
apt-get update
apt-get upgrade -y
echo "Instalacão de atualizações conlcuída com sucesso."

echo "Instalando apache e unzip."
apt-get install apache2 -y
apt-get install unzip -y
echo "Instalações concluídas com sucesso."

echo "Acessando pasta tmp e fazendo download do arquivo zip."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Download efetuado com sucesso!"

echo "Descompactando arquivo main.zip"
unzip main.zip
echo "Arquivo descompactado."

echo "Acessando pasta descompactada."
cd linux-site-dio-main
echo "Acesso à pasta efetuado."

echo "Copiando arquivos da pasta linux-site-dio para a pasta padrão do apache."
cp -R * /var/www/html/
echo "Arquivos copiados."
