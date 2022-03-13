$TTL    604800
@       IN      SOA     ns1.ftilabs.com. root.ftilabs.com. (
                  3       ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
     IN      NS      ns1.ftilabs.com.

; name servers - A records
ns1.ftilabs.com.          IN      A      172.11.15.110

host1.ftilabs.com.        IN      A      172.16.238.10
host2.ftilabs.com.        IN      A      172.16.238.30
host3.ftilabs.com.        IN      A      172.24.118.15
host4.ftilabs.com.        IN      A      172.24.118.16
ftp.ftilabs.com.          IN      A      172.11.15.53
http.ftilabs.com.         IN      A      172.11.15.61
https.ftilabs.com.        IN      A      172.11.15.71 