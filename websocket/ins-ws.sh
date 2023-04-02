#!/bin/bash
# ==========================================

# Setup WS nontls Service
wget -O /usr/local/bin/ws-nontls "https://${ghrepo}/websocket/ws-nontls"
chmod +x /usr/local/bin/ws-nontls
mv websocket/ws-nontls.service /etc/systemd/system/ws-nontls.service
systemctl daemon-reload
systemctl enable ws-nontls
systemctl restart ws-nontls


# Setup WS tls Service
wget -O /usr/local/bin/ws-tls "https://${ghrepo}/websocket/ws-tls"
chmod +x /usr/local/bin/ws-tls
mv websocket/ws-tls.service /etc/systemd/system/ws-tls.service
systemctl daemon-reload
systemctl enable ws-tls
systemctl restart ws-tls
