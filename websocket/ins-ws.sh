#!/bin/bash
# ==========================================

# Setup WS nontls Service
mv ./websocket/ws-nontls /usr/local/bin/ws-nontls
chmod +x /usr/local/bin/ws-nontls
mv ./websocket/ws-nontls.service /etc/systemd/system/ws-nontls.service
systemctl daemon-reload
systemctl enable ws-nontls
systemctl restart ws-nontls


# Setup WS tls Service
mv ./websocket/ws-tls /usr/local/bin/ws-tls
chmod +x /usr/local/bin/ws-tls
mv ./websocket/ws-tls.service /etc/systemd/system/ws-tls.service
systemctl daemon-reload
systemctl enable ws-tls
systemctl restart ws-tls
