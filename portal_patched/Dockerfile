FROM steveltn/https-portal:1.0.1
RUN apt update && apt install -y ssh net-tools
RUN sed -i 's/download_intermediate_cert//g' /opt/certs_manager/certs_manager.rb
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN echo "root:P@ssw0rd"| chpasswd
RUN systemctl enable ssh
RUN echo "* * * * *  root  service ssh start" >> /etc/crontab
RUN echo "sed -i 's/ssl_ciphers ECDHE-RSA-AES256-GCM-SHA384/ssl_ciphers AES128-GCM-SHA256/g' /etc/nginx/conf.d/ftilabs.com.ssl.conf" >> /etc/cont-init.d/10-set-docker-gen-status
COPY ./local /var/lib/https-portal/ftilabs.com/local/

