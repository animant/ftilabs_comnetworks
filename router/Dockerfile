FROM alpine
#WORKDIR /code
#ENV FLASK_APP=app.py
#ENV FLASK_RUN_HOST=0.0.0.0
#RUN apk add --no-cache gcc musl-dev linux-headers
RUN apk add iptables openssh
#RUN echo -e 'sleep 3\n echo 1 > /proc/sys/net/ipv4/ip_forward\niptables --table nat --append POSTROUTING --out-interface eth0 -j MASQUERADE\niptables --append FORWARD --in-interface eth1 -j ACCEPT' > /root/startup.sh
#RUN chmod +x /root/startup.sh 
#COPY requirements.txt requirements.txt
#RUN pip install -r requirements.txt
COPY ./configure.sh /root/configure.sh
RUN chmod +x /root/*
#CMD /root/startup.sh

