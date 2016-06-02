gfwlist=https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt
wget -qO- "${gfwlist}" | base64 -d > gfwlist.txt
export PROXY_ADDR=127.0.0.1:1080 PROXY_TYPE=SOCKS5
bash autoproxy2privoxy gfwlist.txt > gfw.action

