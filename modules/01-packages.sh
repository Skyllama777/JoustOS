#!/usr/bin/env bash
set -eou pipeail

echo "[*] updating package lists..."
apt-get update -y 

echo "[*] stripping unused desktop/broadcast bloat..." 
apt-get purge -y \
avahi-daemon \
bluez \ 
cups \
triggerhappy \
plymouth || true

apt-get autoremove -y --purge

echo "[*] installing core essentials..."
apt-get install -y \
git \
curl \
wget \
tmux \
htop \
ufw \
python3 \
python3-pip \
python3-venv 

echo "[*] installing networking and recon toolkit..."
apt-get install -y \
nmap \
tcpdump \
tshark \
socat \
netcat-openbsd \
dnsutils \
whois \
traceroute

echo "[+] 01-packages complete"
