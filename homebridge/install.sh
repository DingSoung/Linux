apt install nodejs
apt install libavahi-compat-libdnssd-dev

npm i -g homebridge
npm i -g homebridge-yeelight
npm i -g homebridge-lockitron
npm i -g  homebridge-yeelight-platform

npm i -g pm2
pm2 startup
pm2 start homebridge
pm2 save

