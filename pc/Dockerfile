FROM ubuntu
#ENV FLASK_APP=app.py
#ENV FLASK_RUN_HOST=0.0.0.0
#RUN apk add --no-cache gcc musl-dev linux-headers
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt install inetutils-ping iptables iproute2 net-tools curl busybox ftp ssh tcpdump nmap arping macchanger libtext-lorem-perl -y
#COPY requirements.txt requirements.txt
COPY client_emulator.sh /root/client_emulator.sh
COPY configure.sh /root/configure.sh
RUN chmod +x /root/*
#RUN pip install -r requirements.txt
#COPY . .
#CMD ["flask", "run"]

