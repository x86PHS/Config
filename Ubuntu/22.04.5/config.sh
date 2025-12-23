#!/bin/bash

# Essencials Tools
apt install wget curl nc git make gcc net-tools libpcap-dev openvpn -y

# Essencials Tools II
apt install mysql-common postgresql openssh-client tcpdump ssh -y

mkdir ~/Config && cd ~/Config

# Instalação Golang
wget https://go.dev/dl/go1.24.2.linux-amd64.tar.gz
rm -rf /usr/local/go && rm -rf /root/go && tar -C /root -xzf go1.24.2.linux-amd64.tar.gz
export PATH=$PATH:/root/go/bin
echo "PATH=\$PATH:/root/go/bin" >> /root/.bashrc && echo "PATH=\$PATH:/root/go/bin" >> /root/.zshrc
mkdir ~/Config/Packages && mv go1* ~/Config/Packages/


# Python3 Install
sudo apt-get install python3.9 python3-pip -y

# Install Github Tools for Pentest
mkdir ~/Config/Github && cd ~/Config/Github
git clone https://github.com/nmap/nmap.git
git clone https://github.com/OJ/gobuster.git && cd gobuster && go get && go build && go install
apt install burpsuite -y
mkdir /usr/share/wordlists/ && cd /usr/share/wordlists/ && git clone https://github.com/danielmiessler/SecLists.git


# Install Tools For Windows
mkdir  ~/Config/WindowsResoures
cd  ~/Config/WindowsResources
git clone https://github.com/bitsadmin/wesng.git
git clone https://gitlab.com/kalilinux/packages/windows-binaries.git && cd windows-binaries && rm -rf debian && wget https://the.earth.li/~sgtatham/putty/latest/w64/plink.exe
