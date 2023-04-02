if [ "${EUID}" -ne 0 ]; then
    echo "You need to run this script as root"
    exit 1
fi

if [ "$(systemd-detect-virt)" == "openvz" ]; then
    echo "OpenVZ is not supported"
    exit 1
fi
echo "vps.miftachuda.my.id" > /etc/xray/domain
ghrepo="raw.githubusercontent.com/miftachuda/miniautovps/master/"


wget -O sshws.sh "https://${ghrepo}sshws.sh" && chmod +x sshws.sh && ./sshws.sh
rm -f sshws.sh

#install xray
wget https://${ghrepo}/xray/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh

# wget https://github.com/miftachuda/Autovps/raw/master/xray/addtrojan.sh && chmod +x addtrojan.sh && ./addtrojan.sh && rm -f ./addtrojan.sh