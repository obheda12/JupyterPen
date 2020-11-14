
#!/bin/bash

#Tool Install

{
#Make Tools Directory
sudo mkdir /root/Tools

#Install GoLang
echo Installing GoLang!
sudo apt-get install golang-go -qq -y

#Install Subfinder
echo Installing Subfinder!
GO111MODULE=on go get -u -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
sudo mkdir /root/Tools/subfinder
sudo cp /root/go/bin/subfinder /root/Tools/subfinder/

#Install assetfinder
echo Installing assetfinder!
go get -u github.com/tomnomnom/assetfinder
sudo mkdir /root/Tools/assetfinder
sudo cp /root/go/bin/assetfinder /root/Tools/assetfinder/
cp /root/go/bin/assetfinder /usr/local/bin/

#Install dnsprobe
echo Installing dnsprobe!
go get -u github.com/projectdiscovery/dnsprobe
sudo mkdir /root/Tools/dnsprobe
sudo cp /root/go/bin/dnsprobe /root/Tools/dnsprobe/
cp /root/go/bin/dnsprobe /usr/local/bin/

#Install Infoga
echo Installing Infoga!
sudo git clone https://github.com/m4ll0k/Infoga.git /root/Tools/Infoga -q
sudo python /root/Tools/Infoga/setup.py install

#Install ShodanScraper
#Need to initialize Shodan API Key!
echo Installing ShodanScraper!

sudo git clone https://github.com/ariel-shin/Recon-Scripts/blob/master/shodanScraper.py /root/Tools/shodanScraper
sudo chmod +x /root/Tools/shodanScraper/shodanScraper.py
sudo python3 -m easy_install shodan

#Install CloudEnum
echo Installing CloudEnum!
sudo git clone https://github.com/initstring/cloud_enum.git /root/Tools/cloud_enum -q
sudo pip3 install -r /root/Tools/cloud_enum/requirements.txt -q

#Install GitDorker
echo Installing GitDorker
git clone https://github.com/obheda12/GitDorker /root/Tools/GitDorker -q
sudo pip3 install -r /root/Tools/GitDorker/requirements.txt -q
}
