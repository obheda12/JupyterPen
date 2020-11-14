#!/bin/bash

#Jupyter Install

{
#Update System
echo Updating Apt!
sudo apt-get -qq -y update

#Install Basics
echo Installing Basics!
sudo apt-get install zip -qq -y
echo Installing certbot!
sudo apt-get install certbot -qq -y
echo Installing pip3!
sudo apt install python3-pip -qq -y
echo Installing awscli!
pip3 install awscli -q

#Install Python PIP
echo Installing Python PIP!
wget -q https://bootstrap.pypa.io/get-pip.py -O get-pip.py
sudo python get-pip.py
rm get-pip.py

#Install Juypter
echo Installing Jupyter!
pip3 install jupyter -q
pip3 install --upgrade --force jupyter-console -q
pip3 install pandas -q
pip3 install openpyxl -q
mkdir /root/.jupyter/ssl
openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=COUNTRY/ST=STATE/L=CITY/O=ORGANIZATION/CN=CNAME" -keyout /root/.jupyter/ssl/mykey.key -out /root/.jupyter/ssl/mycert.pem
screen -dmS notebook jupyter-notebook --allow-root --notebook-dir /root/.jupyter
}
