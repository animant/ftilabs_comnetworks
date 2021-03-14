FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt install inetutils-ping iptables iproute2 net-tools curl busybox ftp ssh tcpdump nmap arping macchanger libtext-lorem-perl dsniff -y
COPY client_emulator.sh /root/client_emulator.sh
COPY xmlsample /root/xmlsample
COPY configure.sh /root/configure.sh
RUN chmod +x /root/*

