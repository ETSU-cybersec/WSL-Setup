#!/bin/bash

# Update
apt update

# Upgrade
apt upgrade -y

# Basic Installs
apt install unzip -y
apt install zip -y
apt install vim -y
apt install curl -y
apt install git -y
apt install wget -y
apt install nmap -y
apt install openssh-client -y
apt install openssh-server -y
apt install net-tools -y
apt install whois -y
apt install tcpdump -y
apt install wireshark -y
apt install netcat-openbsd -y
apt install telnet -y
apt install hydra -y
apt install hashcat -y
apt install sqlmap -y
apt install gobuster -y
apt install dirb -y
apt install arp-scan -y
apt install binwalk -y
apt install exiftool -y
apt install steghide -y
apt install hexedit -y
apt install gdb -y

# Full Install (Will continue to be updated)


# Python Setup
apt install python3 -y
apt install python3-pip -y
apt install python3-venv -y
apt install python3-dev -y
apt install build-essential -y
apt install pipx -y

python3 -m venv .venv
source .venv/bin/activate
deactivate

pipx install volatility3
pipx install sqlmap
pipx install ldap3
pipx install pwntools

# John Jumbo Setup
apt install pkg-config -y
apt install libssl-dev -y 
apt install zlib1g-dev -y
apt install libbz2-dev -y
apt install libgmp-dev -y
apt install libpcap-dev -y
apt install libsqlite3-dev -y
apt install libcurl4-openssl-dev -y
apt install yasm -y

git clone https://github.com/openwall/john.git
cd john/src
./configure
make -sj"$(nproc)"

echo 'alias 7z2john="perl $HOME/tools/john/run/7z2john.pl"' >> ~/.bashrc
echo 'alias pdf2john="perl $HOME/tools/john/run/pdf2john.py"' >> ~/.bashrc
echo 'alias androidbackup2john="perl $HOME/tools/john/run/androidbackup2john.py"' >> ~/.bashrc
echo 'alias mac2john="perl $HOME/tools/john/run/mac2john.py"' >> ~/.bashrc
echo 'alias mozilla2john="perl $HOME/tools/john/run/mozilla2john.py"' >> ~/.bashrc
echo 'alias office2john="perl $HOME/tools/john/run/office2john.py"' >> ~/.bashrc
echo 'alias openssl2john="perl $HOME/tools/john/run/openssl2john.py"' >> ~/.bashrc
echo 'alias oracle2john="perl $HOME/tools/john/run/oracle2john.py"' >> ~/.bashrc
echo 'alias pcap2john="perl $HOME/tools/john/run/pcap2john.py"' >> ~/.bashrc
echo 'alias ssh2john="perl $HOME/tools/john/run/ssh2john.py"' >> ~/.bashrc
echo 'alias telegram2john="perl $HOME/tools/john/run/telegram2john.py"' >> ~/.bashrc
echo 'alias truecrypt2john="perl $HOME/tools/john/run/truecrypt2john.py"' >> ~/.bashrc
echo 'alias authenticator2john="perl $HOME/tools/john/run/authenticator2john.py"' >> ~/.bashrc
echo 'alias axcrypt2john="perl $HOME/tools/john/run/axcrypt2john.py"' >> ~/.bashrc
echo 'alias bestcrypt2john="perl $HOME/tools/john/run/bestcrypt2john.py"' >> ~/.bashrc
echo 'alias bitcoin2john="perl $HOME/tools/john/run/bitcoin2john.py"' >> ~/.bashrc
echo 'alias bitlocker2john="perl $HOME/tools/john/run/bitlocker2john.py"' >> ~/.bashrc



