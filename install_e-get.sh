#!/bin/sh
{
echo "Este script irá copiar o e-get para pasta /tmp e depois para /usr/bin"
echo "Provavelmente a senha sudo sera requisitada."
sudo -k
sudo sh <<SCRIPT
cd /usr/bin
rm e-get* &> /dev/null
cd /tmp
rm e-get* &> /dev/null
wget https://sohne.com.br/sh/e-get
sudo chmod +x e-get
sudo cp e-get /usr/bin
SCRIPT
echo "O e-get foi instalado. Para usar, utilize o comando e-get. (provavelmente a senha sudo sera requisitada)"
echo "SOHNE, 2016"
}
