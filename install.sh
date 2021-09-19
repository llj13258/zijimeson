
#!bin/bash/

###下载meson挖矿包并且解压####
cd /root/
wget 'https://assets.meson.network:10443/static/terminal/v2.5.1/meson-linux-amd64.tar.gz' && tar -zxvf meson-linux-amd64.tar.gz;

####卸载meson，并且重新安装meson###
cd ./meson-linux-amd64
sudo ./meson service-stop
sudo ./meson service-remove
sudo ./meson service-install <<EOF
RJ5ByecN4IX44i1Lkt61Tg==

40
EOF


cd /root/meson-linux-amd64 && sudo ./meson service-start
sleep 5;
sudo ./meson service-status
