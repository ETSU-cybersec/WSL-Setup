#!/bin/bash

# Update
sudo apt update

# Upgrade
sudo apt upgrade -y

# Basic Installs
sudo apt install -y \
unzip \
zip \
vim \
curl \
git \
wget \
nmap \
openssh-client \
openssh-server \
net-tools \
whois \
tcpdump \
wireshark \
netcat-openbsd \
telnet \
hydra \
hashcat \
sqlmap \
gobuster \
dirb \
arp-scan \
binwalk \
exiftool \
steghide \
hexedit \
gdb

# Full Install (Will continue to be updated)


# Python Setup
sudo apt install -y \
python3 \
python3-pip \
python3-venv \
python3-dev \
build-essential \
pipx

python3 -m venv .venv
source .venv/bin/activate
deactivate

pipx install volatility3
pipx install sqlmap
pipx install ldap3
pipx install pwntools

# John Jumbo Setup
sudo apt install -y \
pkg-config \
libssl-dev \
zlib1g-dev \
libbz2-dev \
libgmp-dev \
libpcap-dev \
libsqlite3-dev \
libcurl4-openssl-dev \
yasm

git clone https://github.com/openwall/john.git
cd john/src
./configure
make -sj"$(nproc)"

cd ~/john/run

for f in *.py *.pl; do
    [ -e "$f" ] || continue
    ln -sf "$f" "${f%.*}"
done



