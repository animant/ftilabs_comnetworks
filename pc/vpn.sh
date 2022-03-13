apt update
apt install -y strongswan xl2tpd
VPN_SERVER_IP="172.11.15.115"
VPN_IPSEC_PSK="your_ipsec_pre_shared_key"
VPN_USER="ftilabs"
VPN_PASSWORD="ftibest"

cat > /etc/ipsec.conf <<EOF

# ipsec.conf - strongSwan IPsec configuration file

conn myvpn
  auto=add
  keyexchange=ikev1
  authby=secret
  type=transport
  left=%defaultroute
  leftprotoport=17/1701
  rightprotoport=17/1701
  right=$VPN_SERVER_IP
  ike=aes128-sha1-modp2048
  esp=aes128-sha1
EOF

cat > /etc/ipsec.secrets <<EOF
: PSK "$VPN_IPSEC_PSK"
EOF
chmod 600 /etc/ipsec.secrets
cat > /etc/xl2tpd/xl2tpd.conf <<EOF
[lac myvpn]
lns = $VPN_SERVER_IP
ppp debug = yes
pppoptfile = /etc/ppp/options.l2tpd.client
length bit = yes
EOF

cat > /etc/ppp/options.l2tpd.client <<EOF
ipcp-accept-local
ipcp-accept-remote
refuse-eap
require-chap
noccp
noauth
mtu 1280
mru 1280
noipdefault
defaultroute
usepeerdns
connect-delay 5000
name "$VPN_USER"
password "$VPN_PASSWORD"
EOF

chmod 600 /etc/ppp/options.l2tpd.client

mkdir -p /var/run/xl2tpd
touch /var/run/xl2tpd/l2tp-control
ipsec restart
service xl2tpd restart
ipsec up myvpn
sleep 8
echo "c myvpn" > /var/run/xl2tpd/l2tp-control
sleep 8
ifconfig

ip route add 172.11.15.110 via $(ip address show dev ppp0 | grep -Po '(?<=peer )(\b([0-9]{1,3}\.){3}[0-9]{1,3}\b)') dev ppp0