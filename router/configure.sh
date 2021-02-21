#!/bin/bash
echo 1 > /proc/sys/net/ipv4/ip_forward
iptables --table nat --append POSTROUTING --out-interface eth0 -j MASQUERADE
iptables --append FORWARD --in-interface eth1 -j ACCEPT
if [ "$#" -eq 2 ]; then
    route add default gw $2
    route del default gw $1
fi
