FROM steveltn/https-portal:1.0.1
#ENV FLASK_APP=app.py
#ENV FLASK_RUN_HOST=0.0.0.0
#RUN apk add --no-cache gcc musl-dev linux-headers
RUN sed -i 's/download_intermediate_cert//g' /opt/certs_manager/certs_manager.rb
RUN echo "sed -i 's/ssl_ciphers ECDHE-RSA-AES256-GCM-SHA384/ssl_ciphers AES128-GCM-SHA256/g' /etc/nginx/conf.d/ftilabs.com.ssl.conf" >> /etc/cont-init.d/10-set-docker-gen-status
#RUN sed -i 's/CertsManager/#CertsManager/g' /etc/cont-init.d/00-setup
COPY ./local /var/lib/https-portal/ftilabs.com/local/
#COPY requirements.txt requirements.txt
#RUN pip install -r requirements.txt
#COPY . .
#CMD ["flask", "run"]

