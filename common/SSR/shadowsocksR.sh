yum install git
rm -rf ~/shadowsocksr
git clone -b manyuser https://github.com/shadowsocksr/shadowsocksr.git ~/shadowsocksr

cd ~/shadowsocksr
bash initcfg.sh

cd ~/shadowsocksr/shadowsocks
python server.py -d stop
python server.py -p 1325 -k aaaaaa -m aes-256-cfb -O origin -o tls1.2_ticket_auth_compatible -g m.10010.com -d start

