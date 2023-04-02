#!/bin/bash
# ==========================================
ghrepo="raw.githubusercontent.com/miftachuda/miniautovps/master/"

# Setup WS nontls Service
wget -O /usr/local/bin/ws-nontls "https://${ghrepo}/websocket/ws-nontls"
chmod +x /usr/local/bin/ws-nontls
wget -O  /etc/systemd/system/ws-nontls.service "https://${ghrepo}/websocket/ws-nontls.service"
systemctl daemon-reload
systemctl enable ws-nontls
systemctl restart ws-nontls


# Setup WS tls Service
wget -O /usr/local/bin/ws-tls "https://${ghrepo}/websocket/ws-tls"
chmod +x /usr/local/bin/ws-tls
wget -O  /etc/systemd/system/ws-tls.service "https://${ghrepo}/websocket/ws-tls.service"
systemctl daemon-reload
systemctl enable ws-tls
systemctl restart ws-tls
