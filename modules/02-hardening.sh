#!/usr/bin/env bash
set -euo pipefail
echo "[*] applying kernel sysctl hardening..."
cat << 'EOF' > /etc/sysctl.d/99-security.conf
net.ipv4.ip_forward = 0
net_syncookies = 1
net.ipv4.icm-p_echo_ignore_broadcasts = 1
net.ipv4.conf.all.accept_-source_route = 0 
