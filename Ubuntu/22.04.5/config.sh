#########################################
#	UBUNTU 22.04.5 - CONFIG SCRIPT	#
#		23/12/2025		#
#########################################

# Directories
mkdir $(echo $USER)/configs
cd $(echo $USER)/configs
pwd -L

# utility tools
apt install git make gcc curl wget zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# net tools
apt install net-tools libpcap-dev openvpn tcpdump wireshark-qt -y

# Utility
apt install apache2 postgresql mysql-common openssh-client ssh -y

# GOLANG INSTALL
wget https://go.dev/dl/go1.24.2.linux-amd64.tar.gz
rm -rf /usr/local/go && rm -rf /root/go && tar -C /root -xzf go1.24.2.linux-amd64.tar.gz
export PATH=$PATH:/root/go/bin
echo "PATH=\$PATH:/root/go/bin" >> /root/.bashrc && echo "PATH=\$PATH:/root/go/bin" >> /root/.zshrc
mkdir $(echo $USER)/configs/packages && mv go1* $(echo $USER)/configs/packages/

# PYTHON 3 INSTALL
sudo apt-get install python3.9 python3-pip -y

# GITHUB Tools

# - Windows Resources
mkdir /usr/share/WindowsResources
cd /usr/share/WindowsResources
git clone https://github.com/bitsadmin/wesng.git
git clone https://gitlab.com/kalilinux/packages/windows-binaries.git && cd windows-binaries && rm -rf debian && wget https://the.earth.li/~sgtatham/putty/latest/w64/plink.exe

# - Wordlists
mkdir /usr/share/wordlists/
cd /usr/share/wordlists/
git clone https://github.com/danielmiessler/SecLists.git
mv SecLists/* .
git clone https://github.com/00xZEROx00/kali-wordlists
mv kali-wordlists/* .
rm -rf SecLists kali-wordlists
