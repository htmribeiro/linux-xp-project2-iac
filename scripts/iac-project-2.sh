#!/bin/bash

echo " "
echo "=============================="
echo ">>>> Atualizar o servidor <<<<"
echo "=============================="

   apt-get update
   apt-get upgrade -y

echo " "
echo "Atualização concluída."

echo " "
echo "=============================="
echo ">>>> Instalação do Apache <<<<"
echo "=============================="

   apt-get install apache2 -y

echo " "
echo "Instalação concluída."

echo " "
echo "============================="
echo ">>>> Instalação do unzip <<<<"
echo "============================="

   apt-get install unzip -y

echo " "
echo "Instalação concluída."

echo " "
echo "====================================================="
echo ">>>> Download dos arquivos para o diretório /tmp <<<<"
echo "====================================================="

   cd /tmp
   wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo " "
echo "Arquivo baixado com sucesso."

echo " "
echo "==================================================="
echo ">>>> Descompactando e transferindo os arquivos <<<<"
echo "==================================================="


   unzip /tmp/main.zip
   cp -R /tmp/linux-site-dio-main/* /var/www/html

echo " "
echo "Arquivos transferidos com sucesso"

echo " "
echo "Fim de execução!!!"
